(TeX-add-style-hook
 "design"
 (lambda ()
   (TeX-run-style-hooks
    "complete-graph")
   (LaTeX-add-environments
    '("posterbox" LaTeX-env-args ["argument"] 1))))

