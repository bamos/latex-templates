(TeX-add-style-hook
 "statement"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("journal" "11pt" "letterpaper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "hmargin=0.83in" "vmargin=1in") ("fontenc" "T1")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "journal"
    "journal11"
    "geometry"
    "fontenc"
    "graphicx"
    "enumitem"
    "natbib"
    "url"
    "fancyhdr"
    "lastpage")
   (TeX-add-symbols
    "mytitle"
    "me")
   (LaTeX-add-bibliographies
    "references")))

