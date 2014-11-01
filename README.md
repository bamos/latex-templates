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
+ https://github.com/cmichi/latex-template-collection
+ https://github.com/deedydas/Latex-Templates
+ https://github.com/stevegeek/latex-templates
+ https://github.com/RichardLitt/latex-templates

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
