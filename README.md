# LaTeX Templates

[LaTeX][latex] is a typesetting program
used to produce high quality technical documents.
Formatting LaTeX documents is difficult and pre-built templates are
often difficult to tweak.
This repository contains LaTeX templates I'm curating and creating
that strive to be simple with minimalist code.
Pictures of each template are available on [this webpage][www].
See my other LaTeX projects at [bamos/cv][cv] and
[bamos/beamer-snippets][beamer-snippets].

![Screenshot](https://raw.githubusercontent.com/bamos/latex-templates/master/screenshot.png?raw=true)

## Writing Check
I'm two months into a CS Ph.D. program and all my LaTeX writing
is technical.
I often place the passive voice in technical documents where the active
voice better suits and have been searching for ways to automatically
prevent using the passive voice.
I recognize that using the passive voice can be favorable,
as [this article][pv1] and [Wikipedia][pv2] describe, but
I want to break my bad habit of misusing the passive voice.

I've found the [btford/write-good][write-good] project, which is a
native linter for English prose
and works well on plaintext [LaTeX][latex] documents.
I've updated the [Makefile's][make] in my
[latex-templates project][lt] to use `write-good`
and refuse to build documents containing passive voice.
I see forcing the active voice in LaTeX document as using the
`-Werror` flag in C and C++ programs.
All other messages are output as warnings after building.

Note: The return status and correct flag handling are available in my
fork at [bamos/write-good][bamos/write-good].
I've submitted a [pull request][pr] to merge these changes into
the original repository.

I understand this forceful option isn't desirable for everybody.
The check will run if `write-good` installed and on your `PATH`.
You can disable this check by commenting out the first call to
`write-good` in the Makefile with the `#` character.

## Contributing.
Contributions are highly welcomed!
Please add to the [templates][templates] directory
and send a pull request.

## Webpage Generation Process.
The Python 3 script [generate.py][gen] produces a static website in `dist`.
`generate.py` loops through the collection of snippets and uses
[Jinja][jinja] templates to output LaTeX documents.

This project uses [Grunt][grunt] to deploy `dist` to [Github pages][ghp]
in the [gh-pages][lt-ghp] branch with the [grunt-build-control][gbc] plugin.
[package.json][pjson] manages the [npm][npm] dependencies.
Running `npm install` installs the dependencies.

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
