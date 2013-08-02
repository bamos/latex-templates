\ProvidesClass{hw}
\LoadClassWithOptions{article}
\RequirePackage{url,graphicx,tabularx,array,amsmath, amsfonts,
amsthm,enumerate}

\RequirePackage{enumitem}
\setlength{\parskip}{1ex}
\setlength{\parindent}{0pt}
\setlist{nolistsep}

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
