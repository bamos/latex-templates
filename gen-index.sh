#!/bin/sh

die() { echo $*; exit -1; }

./make-all.sh || exit -1

cat > index.html<<EOF
<!DOCTYPE html>
<head>
  <title>LaTeX Templates</title>
  <style>
@import url("http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,400,300,700");
h1,h2 {
  font-family: "Open Sans","Helvetica Neue",Helvetica,Arial,sans-serif;
  font-weight: 300;
  line-height: 1.1;
}
h1 { font-size: 26px }
h2 { font-size: 20px }
a {
  color: #008cba;
  cursor: auto;
  text-decoration: none;
}
a:hover {text-decoration:underline;}
  </style>
</head>

<html>
<body>
<h1>
  <a href="http://github.com/bamos/latex-templates">LaTeX Templates</a>
</h1>
<a href=http://bamos.io/about>Brandon Amos</a>

<ul>
EOF
BASE_LINK=https://github.com/bamos/latex-templates/tree/gh-pages
for TMPL_PDF in $(find . -maxdepth 2 -name '*.pdf' | sort); do
  SHORT_NAME=$(echo $TMPL_PDF | sed 's/\.\/\(.*\)\/.*\.pdf/\1/g')
  echo "  <li><a href="#$SHORT_NAME">$SHORT_NAME</a>" >> index.html
done
echo -e "</ul>\n" >> index.html
for TMPL_PDF in $(find . -name '*.pdf' | sort); do
  SHORT_NAME=$(echo $TMPL_PDF | sed 's/\.\/\(.*\)\/.*\.pdf/\1/g')
  cat >> index.html <<EOF
<h2 style='display: inline'>
  <a
    href="$BASE_LINK/$SHORT_NAME"
    id="$SHORT_NAME"
  >$SHORT_NAME</a>
</h2>
<small><a href="#">(Top)</a></small>
<embed src="$TMPL_PDF" width="100%" height="700">

EOF
done

cat >> index.html<<EOF
  <script src="//static.getclicky.com/js" type="text/javascript"></script>
  <script type="text/javascript">try{ clicky.init(100602499); }catch(e){}</script>
</body>
</html>
EOF
