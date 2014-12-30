#!/usr/bin/env python3

import os
import shutil
import sys

from jinja2 import Environment,FileSystemLoader
from pygments import highlight
from pygments.lexers import TexLexer
from pygments.formatters import HtmlFormatter
from subprocess import Popen,PIPE

ref_map = {
  'business-cards': ['http://www.ctan.org/tex-archive/macros/latex/contrib/bizcard'],
  'cheatsheet': ['http://www.stdout.org/~winston/latex/'],
  'ieee-1.8': [
    'http://www.ctan.org/tex-archive/macros/latex2e/contrib/IEEEtran/',
    'https://code.google.com/p/mobilecps/source/browse/#svn%2Ftrunk%2Fprojects%2Fhamilton_turner%2Fpapers'
  ],
  'cv': ['https://github.com/bamos/cv'],
  'presentation': ['https://github.com/bamos/beamer-snippets'],
  'vt-poster': ['http://www.brian-amberg.de/uni/poster/']
}

env = Environment(loader=FileSystemLoader("tmpl"),
  block_start_string='~{',block_end_string='}~',
  variable_start_string='~{{', variable_end_string='}}~')

shutil.rmtree("dist", ignore_errors=True)
shutil.copytree("static", "dist")
shutil.copytree("templates", "dist/templates")
templates_dir="dist/templates"

def runCmd(cmdStr):
  p = Popen(cmdStr.split(), stdout=PIPE, stderr=PIPE)
  out = p.communicate()
  ret = p.poll()
  if ret:
    print("Error: Command returned nonzero: {}.".format(ret))
    print("===Stdout:\n{}".format(out[0].decode()))
    print("===Stderr:\n{}".format(out[1].decode()))
    raise Exception("Command returned nonzero: {}.".format(ret))


templates = []
for d in sorted(os.listdir(templates_dir)):
  print("====", d)

  pdf = "templates/"+d+"/"+d+".pdf"
  png = "templates/"+d+"/"+d+".png"
  src = "https://github.com/bamos/latex-templates/tree/master/templates/{}".format(d)
  tar = "templates/"+d+".tar"

  runCmd("tar -C dist/templates -cf dist/{} {}".format(tar,d))

  full_d = templates_dir+"/"+d
  runCmd("make -C {}".format(full_d))

  if not os.path.isfile("dist/"+pdf):
    for f_name in os.listdir("dist/templates/"+d):
      if f_name.endswith(".pdf"):
        pdf = "templates/"+d+"/"+f_name
        png = "templates/"+d+"/"+f_name[0:-4]+".png"
        break
  if not os.path.isfile("dist/"+pdf):
    raise Exception("Unable to find pdf.")

  runCmd('convert -flatten -density 300 -trim {}[0] -quality 100 -resize 600 {}'.format(
    "dist/"+pdf, "dist/"+png
  ))

  ref = None
  if d in ref_map: ref = ref_map[d]
  templates.append({
    'fname': d, 'pdf': pdf, 'png': png, 'tar': tar, 'src': src, 'ref': ref
  })

with open("dist/index.html", "w") as idx_f:
  idx_f.write(env.get_template("index.jinja.html").render(
    templates=templates
  ))
