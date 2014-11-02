[LaTeX][latex] is a typesetting program
that produces high quality technical documents.
Formatting LaTeX documents is difficult and pre-built templates
often require extensive knowledge of the template to modify.
This repository contains LaTeX templates I'm curating and creating
that strive to be simple with minimalist code.
Pictures of each template are available on [this webpage][www],
which is automatically created from `generate.py`.
See my other LaTeX projects at [bamos/cv][cv] and
[bamos/beamer-snippets][beamer-snippets].

![Screenshot](https://raw.githubusercontent.com/bamos/latex-templates/master/screenshot.png?raw=true)

# Writing Check
[btford/write-good][write-good] is a native linter for English prose
and works well on LaTeX documents.
If `write-good` is installed, the Makefile's in this project will output
a list of warnings and tips for improving writing after
building the LaTeX documents.

# Contributing
Contributions are highly welcomed!
If you want to add a similar template, please add to
the [templates][templates] directory and I'm happy to merge pull request.
If you want to use the static webpage generation framework to present
a different set of templates with other motivations,
I'm happy to link to your project here.

# Webpage Generation Process
The Python 3 script [generate.py][gen] produces a static website in `dist`.
`generate.py` loops through the collection of snippets and uses
[Jinja][jinja] templates to output LaTeX documents.

This project uses [Grunt][grunt] to deploy `dist` to [Github pages][ghp]
in the [gh-pages][lt-ghp] branch with the [grunt-build-control][gbc] plugin.
[package.json][pjson] manages the [npm][npm] dependencies.
Running `npm install` installs the dependencies.

+ `grunt generate` produces the static site in `dist`, and
+ `grunt deploy` pushes the `dist` directory to the `gh-pages` branch.

# Similar Projects
There are many approaches to sharing LaTeX templates online,
and this project uniquely adds a static webpage generation process
to generate previews of templates managed in Git.
The following list shows a short sampling of projects,
and I'm happy to merge pull requests of other projects.

## Git Repositories

<!--
To generate the following list, install v1 of https://github.com/jacquev6/PyGithub
and run the following command. Please add projects to the list in the comment
and in the table below.

The below code portion can be extracted and copied with:
perl -ne 'print if /^python3<<EOF/ .. /EOF$/' README.md | pbcopy

python3<<EOF | pbcopy
from github import Github
import time
import os
import sys

github = Github(os.getenv("GITHUB_TOKEN"))
repo_list = [
  "cmichi/latex-template-collection",
  "deedydas/Latex-Templates",
  "MartinThoma/LaTeX-examples",
  "RichardLitt/latex-templates",
  "stevegeek/latex-templates"
]

print("Generated on {}, see the Markdown source for more details.\n".format(
  time.strftime("%Y-%m-%d")
))
print("Name | Stargazers | Description")
print("|".join(["----"]*3))
for r_name in sorted(repo_list):
  try:
    r = github.get_repo(r_name)
  except:
    print("Error: Repository '{}' not found.".format(r_name),file=sys.stderr)
    sys.exit(-1)
  content = " | ".join([
    "[{}]({})".format(r.full_name,r.html_url),
    str(r.stargazers_count),
    r.description
  ])
  print(content)
EOF
-->

Generated on 2014-11-02, see the Markdown source for more details.

Name | Stargazers | Description
----|----|----
[MartinThoma/LaTeX-examples](https://github.com/MartinThoma/LaTeX-examples) | 104 | Examples for the usage of LaTeX
[RichardLitt/latex-templates](https://github.com/RichardLitt/latex-templates) | 1 | My Personal LaTeX Templates
[cmichi/latex-template-collection](https://github.com/cmichi/latex-template-collection) | 153 | A collection of different LaTeX templates (invoices, timesheets, letters, etc.).
[deedydas/Latex-Templates](https://github.com/deedydas/Latex-Templates) | 12 | A concise set of Latex templates that serves a small set of needs - CV, Essays, Articles and Problem Sets
[stevegeek/latex-templates](https://github.com/stevegeek/latex-templates) | 14 | A collection of my LaTeX templates: CV (resume), letter head and PhD Thesis

## Websites
+ http://www.latextemplates.com/
+ https://www.sharelatex.com/templates
+ https://www.writelatex.com/templates

# Licensing
All modified referenced code has license of the original source.
All other portions are under the MIT license.

[latex]: http://www.latex-project.org/
[www]: http://bamos.github.io/latex-templates/

[jinja]: http://jinja.pocoo.org/
[grunt]: http://gruntjs.com/
[ghp]: https://pages.github.com/
[gbc]: https://github.com/robwierzbowski/grunt-build-control
[npm]: https://www.npmjs.org/
[make]: http://www.gnu.org/software/make/

[gen]: https://github.com/bamos/latex-templates/blob/master/generate.py
[mf]: https://github.com/bamos/latex-templates/blob/master/Makefile.slides
[gf]: https://github.com/bamos/latex-templates/blob/master/Gruntfile.js
[pjson]: https://github.com/bamos/latex-templates/blob/master/package.json
[lt-ghp]: https://github.com/bamos/latex-templates/tree/gh-pages

[templates]: https://github.com/bamos/latex-templates/tree/master/templates
[write-good]: https://github.com/btford/write-good
[bamos/write-good]: https://github.com/bamos/write-good
[pr]: https://github.com/btford/write-good/pull/31

[cv]: https://github.com/bamos/cv
[beamer-snippets]: https://github.com/bamos/beamer-snippets

[pv1]: http://www.lel.ed.ac.uk/~gpullum/passive_loathing.pdf
[pv2]: http://en.wikipedia.org/wiki/English_passive_voice#Advice_in_favor_of_the_passive_voice
