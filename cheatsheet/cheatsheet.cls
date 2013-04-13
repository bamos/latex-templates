% http://www.stdout.org/~winston/latex/latexsheet.tex

\ProvidesClass{cheatsheet}
\LoadClassWithOptions{article}
\RequirePackage{url,graphicx,tabularx,array, amsfonts,
amsthm,enumerate, enumitem}

\usepackage{multicol, calc, ifthen}
\usepackage{amsmath}

\usepackage[landscape]{geometry}
\usepackage{graphicx} % includegraphics

\setlength{\parskip}{1ex}
\setlength{\parindent}{0pt}
\setlist{nolistsep}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt plus 0.5ex}
\usepackage{enumitem}
\setlist{nolistsep}

\newcommand{\mitem}[2]{{\tt #1} & #2 \\}
\newcommand{\ttitem}[2]{\mitem{#1}{\tt #2}}

% Dont print section numbers
%~ \setcounter{secnumdepth}{0}

% This sets page margins to .5 inch if using letter paper, and to 1cm
% if using A4 paper. (This probably isnt strictly necessary.)
% If using another size paper, use default 1cm margins.
\ifthenelse{\lengthtest { \paperwidth = 11in}}
	{ \geometry{top=.25in,left=.25in,right=.25in,bottom=.25in} }
	{\ifthenelse{ \lengthtest{ \paperwidth = 297mm}}
		{\geometry{top=1cm,left=1cm,right=1cm,bottom=1cm} }
		{\geometry{top=1cm,left=1cm,right=1cm,bottom=1cm} }
	}

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
  breaklines=true,breakatwhitespace=true,escapeinside={\%*}{*)}
}
