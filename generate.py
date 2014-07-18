#!/usr/bin/env python3

import os
import shutil

from jinja2 import Environment,FileSystemLoader
from pygments import highlight
from pygments.lexers import TexLexer
from pygments.formatters import HtmlFormatter
from subprocess import Popen,PIPE

env = Environment(loader=FileSystemLoader("tmpl"))

templates_dir = "templates"
dist_dir = "dist"
html_index = "/index.html"
gen_templates_dir = "/gen_templates"
static_dir = "static"

shutil.rmtree(dist_dir, ignore_errors=True)
shutil.copytree(static_dir, dist_dir)
shutil.copytree(templates_dir, dist_dir + "/" + gen_templates_dir)

templates = []
for subdir, dirs, files in os.walk(templates_dir):
  for fname in files:
    trimmedName, ext = os.path.splitext(fname)
    full_path = subdir + "/" + fname
    if ext == '.tex':
      with open(full_path, "r") as snippet_f:
        gen_pdf_name = gen_templates_dir+"/"+trimmedName+".pdf"
        gen_png_name = gen_templates_dir+"/"+trimmedName+".png"
        snippet_content = snippet_f.read().strip()
        templates.append({
          'fname': trimmedName,
          'pdf': gen_pdf_name,
          'png': gen_png_name,
          'content': highlight(snippet_content, TexLexer(), HtmlFormatter())
        })

p = Popen(['make', "-f", "../../Makefile.slides", "-C",
  dist_dir+"/"+gen_templates_dir], stdout=PIPE, stderr=PIPE)
out = p.communicate()
if out[1]:
  print("Warning: Make stderr non-empty.")
  print("===Stdout:")
  print(out[0].decode())
  print("===Stderr:")
  print(out[1].decode())

with open(dist_dir+"/"+html_index, "w") as idx_f:
  idx_f.write(env.get_template("index.jinja.html").render(
    templates=templates,
  ))
