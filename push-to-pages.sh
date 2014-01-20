#!/bin/sh

die() { echo $*; exit -1; }

git checkout gh-pages
./make-all.sh || exit -1

cat > index.html<<EOF
<h1>
  <a href="http://github.com/bamos/latex-templates">LaTeX Templates</a>
</h1>
<a href=http://bamos.io/about>Brandon Amos</a>

EOF
for TMPL_PDF in $(find . -name '*.pdf'); do
  SHORT_NAME=$(echo $TMPL_PDF | sed 's/\.\/\(.*\)\/.*\.pdf/\1/g')
  cat >> index.html <<EOF
<h2>$SHORT_NAME</h2>
<embed src="$TMPL_PDF" width="800" height="600">

EOF
done

git add index.html || die "Unable to add."
git commit -m "Update gh-pages." || die "Unable to commit."
git push || die "Unable to push."
git branch master
