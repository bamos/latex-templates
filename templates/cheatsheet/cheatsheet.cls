% http://www.stdout.org/~winston/latex/latexsheet.tex

\ProvidesClass{cheatsheet}
\LoadClassWithOptions{extarticle}
\RequirePackage{url,graphicx,tabularx,array, amsfonts,
amsthm,enumerate, enumitem}

\usepackage{multicol, calc, ifthen}
\usepackage{amsmath}

\usepackage[landscape]{geometry}
\geometry{top=.6in,left=.6in,right=.6in,bottom=.6in}

\usepackage{graphicx} % includegraphics

\setlength{\parskip}{1ex}
\setlength{\parindent}{0pt}
\setlist{nolistsep}

% Dont print section numbers
%~ \setcounter{secnumdepth}{0}


% Turn off header and footer
\pagestyle{empty}


% Redefine section commands to use less space
\makeatletter
\renewcommand{\section}{\@startsection{section}{1}{0mm}%
                                {0ex plus 0ex minus 0ex}%
                                {0.5ex plus .2ex}%x
                                {\normalfont\large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0mm}%
                                {-1explus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0mm}%
                                {-0.5ex plus -.5ex minus -.2ex}%
                                {0.5ex plus .2ex}%
                                {\normalfont\small\bfseries}}
\makeatother

% Insert
% http://tex.stackexchange.com/questions/12262/multicol-and-figures
\newenvironment{Figure}
  {\par\medskip\noindent\minipage{\linewidth}}
  {\endminipage\par\medskip}

\RequirePackage[T1]{fontenc}

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
  breaklines=true,breakatwhitespace=true,escapeinside=||
}
