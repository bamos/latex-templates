\ProvidesClass{hwdoc}
\LoadClassWithOptions{article}
\RequirePackage{url,graphicx,tabularx,array,amsmath, amsfonts,
amsthm,enumerate}

\RequirePackage{enumitem}
\setlength{\parskip}{1ex}
\setlength{\parindent}{0pt}

\RequirePackage[T1]{fontenc}

\newcommand{\problem}[1]{\textbf{Problem #1} \newline}

\usepackage{color}
\usepackage{listings, textcomp}
\lstset{
  language=C,
  basicstyle=\footnotesize,commentstyle=\textit,stringstyle=\upshape,
  upquote=true,
  numbers=left,numberstyle=\footnotesize,stepnumber=1,numbersep=5pt,
  backgroundcolor=\color{white},
  showspaces=false,showstringspaces=false,showtabs=false,
  frame=single,tabsize=2,
  breaklines=true,breakatwhitespace=true,escapeinside={\%*}{*)}
}

% http://tex.stackexchange.com/questions/55472
\newcommand{\headerline}[3]{%
\par\medskip\noindent
\makebox[\textwidth][s]{\rlap{#1}\hfill{#2}\hfill\llap{#3}}}
