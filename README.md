# LaTeX Templates

[LaTeX][latex] is a typesetting program
used to produce high quality technical documents.
Formatting LaTeX documents is difficult and pre-built templates are
often difficult to modify.
This repository contains LaTeX templates I'm curating and creating
that strive to be minimalist, which are best viewed on
[this webpage][www].

![Screenshot](https://raw.githubusercontent.com/bamos/latex-templates/master/screenshot.png?raw=true)

## Contributing.
Contributions are highly welcomed!
Please add to the [templates][templates] directory
and send a pull request.

## Webpage Generation Process.
The Python 3 script [generate.py][gen] produces a static website in `dist`.
`generate.py` loops through the collection of snippets and uses
[Jinja][jinja] templates to output LaTeX documents.

[Grunt][grunt] is used to deploy `dist` to [Github pages][ghp]
in the [gh-pages][lt-ghp] branch with the [grunt-build-control][gbc] plugin.
The [npm][npm] dependencies are managed in [package.json][pjson]
and can be installed with `npm install`.

+ `grunt generate` produces the static site in `dist`, and
+ `grunt deploy` pushes the `dist` directory to the `gh-pages` branch.

# Licensing.
All modified referenced code has license of the original source.
All other portions are under the MIT license.

[latex]: http://www.latex-project.org/
[www]: http://bamos.github.io/latex-templates/

[jinja]: http://jinja.pocoo.org/
[grunt]: http://gruntjs.com/
[ghp]: https://pages.github.com/
[gbc]: https://github.com/robwierzbowski/grunt-build-control
[npm]: https://www.npmjs.org/

[gen]: https://github.com/bamos/latex-templates/blob/master/generate.py
[mf]: https://github.com/bamos/latex-templates/blob/master/Makefile.slides
[gf]: https://github.com/bamos/latex-templates/blob/master/Gruntfile.js
[pjson]: https://github.com/bamos/latex-templates/blob/master/package.json
[lt-ghp]: https://github.com/bamos/latex-templates/tree/gh-pages
