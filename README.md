# Beamer Snippets

TODO - Rewrite

The [Beamer][beamer] package enables [LaTeX][latex] to produce high quality
technical presentations and can be used in combination with the
[TikZ][tikz] package for including publication-quality diagrams in presentations.
However, formatting LaTeX presentations using Beamer and TikZ is
difficult and time consuming, so I often reuse code snippets from
previous presentations.
This repository contains a collection of snippets I'm gathering from
my papers and presentations, which are best viewed on
[this webpage](http://bamos.github.io/beamer-snippets/).

![Screenshot](https://raw.githubusercontent.com/bamos/beamer-snippets/master/screenshot.png?raw=true)

## Contributing.
Contributions are highly welcomed!
Please add to the [snippets][snippets] directory, modify the
[preamble][preamble], and send a pull request.
If you substantially modify the preamble, I recommend keeping
your repo as a fork, and I'll keep a list of forks in this README.

## Webpage Generation Process.
The Python 3 script [generate.py][gen] produces a static website in `dist`.
`generate.py` loops through the collection of snippets and uses
[Jinja][jinja] templates to output LaTeX documents.
[Makefile.slides][mf] is then used to generate PNG images from
each slide, and Jinja HTML templates are used to create `index.html`.

### Grunt
[Grunt][grunt] is used to deploy `dist` to [Github pages][ghp]
in the [gh-pages][bs-ghp] branch with the [grunt-build-control][gbc] plugin.
The [npm][npm] dependencies are managed in [package.json][pjson]
and can be installed with `npm install`.

+ `grunt generate` produces the static site in `dist`, and
+ `grunt deploy` pushes the `dist` directory to the `gh-pages` branch.

[beamer]: http://en.wikipedia.org/wiki/Beamer_(LaTeX)
[tikz]: http://en.wikibooks.org/wiki/LaTeX/PGF/TikZ
[latex]: http://www.latex-project.org/
[texample]: http://www.texample.net/
[jinja]: http://jinja.pocoo.org/
[grunt]: http://gruntjs.com/
[ghp]: https://pages.github.com/
[gbc]: https://github.com/robwierzbowski/grunt-build-control
[npm]: https://www.npmjs.org/

[snippets]: https://github.com/bamos/beamer-snippets/tree/master/snippets
[preamble]: https://github.com/bamos/beamer-snippets/blob/master/tmpl/preamble.tex
[gen]: https://github.com/bamos/beamer-snippets/blob/master/generate.py
[mf]: https://github.com/bamos/beamer-snippets/blob/master/Makefile.slides
[gf]: https://github.com/bamos/beamer-snippets/blob/master/Gruntfile.js
[pjson]: https://github.com/bamos/beamer-snippets/blob/master/package.json
[bs-ghp]: https://github.com/bamos/beamer-snippets/tree/gh-pages
