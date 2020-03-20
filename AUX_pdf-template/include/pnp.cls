\ProvidesClass{include/pnp}
\LoadClass[11pt,a4paper,titlepage]{scrbook}

% ENCODING
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}

% MICROTYPE
\usepackage[protrusion=true,expansion,tracking,kerning,spacing]{microtype}
\microtypecontext{spacing=nonfrench}

% CALC
\usepackage{calc}
\usepackage{spreadtab}

% GEOMETRY
\usepackage[bindingoffset=0mm,left=25mm,right=25mm,top=40mm,bottom=35mm,headheight=15pt,footskip=10mm+.5em]{geometry}
\parindent 0cm
\parskip 1.5ex
\usepackage[all]{nowidow}

% LANGUAGE
\usepackage[ngerman]{babel}
\usepackage[htt]{hyphenat}
\usepackage[style=alphabetic]{biblatex}
\usepackage{csquotes}

% HEADERS
\usepackage{fancyhdr}
\fancyhf{}
\fancyhead[L]{\thepage$\;$- \adventurename}
\setlength\headheight{26pt}
\rhead{\includegraphics[height=4mm]{img/quill.png}}
\renewcommand{\headrulewidth}{0.6pt}
% \renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}
\fancyfoot[R]{\thepage}

% CHAPTERS
\usepackage{color}
\definecolor{RoyalRed}{RGB}{157,16, 45}
\usepackage[ ]{titlesec}

\titleformat{\section}[display]
{}{\flushright \fontsize{17}{17}\thesection}{-30pt}{\Large\bfseries}

% MATH, PHYSICS
\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{amssymb}
\usepackage{upgreek}
\usepackage{nicefrac}
\usepackage[load-configurations=abbreviations]{siunitx}
\sisetup{per-mode=fraction}
\sisetup{separate-uncertainty=true}
\sisetup{range-phrase=~bis~}
\sisetup{output-decimal-marker = {,}}
\DeclareSIUnit\sample{S}
\DeclareSIUnit\roothertz{\ensuremath{\sqrt{\text{\hertz}}}}
\usepackage[version=4]{mhchem}

% TABLES, GRAPHICS
\usepackage{booktabs}
\usepackage[pdftex]{graphicx}
\usepackage[normal,font={small,color=black},labelfont=bf,margin=2em]{caption}
\usepackage{subcaption}
\usepackage{pgf}
\usepackage{dpfloat}
\usepackage{tcolorbox}

\usepackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{backgrounds}
\makeatletter

% UTILITIES
\usepackage[
	raiselinks=true,
	bookmarks=true,
	bookmarksopenlevel=1,
	bookmarksopen=true,
	bookmarksnumbered=true,
	hyperindex=true,
	plainpages=false,
	pdfpagelabels=true,
	pdfborder={0 0 0.5},
	colorlinks=false
		]{hyperref}
\usepackage{import}
\usepackage{ifthen}

% DRAFT
\usepackage{lipsum}

\usepackage{totcount}
\newtotcounter{todocounter}
\setcounter{todocounter}{0}

% INCLUDES
\input{include/config.tex}
\input{include/sections.tex}
\input{include/cmds.tex}

\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

% QUOTE
\makeatletter
\def\fquote{%
    \@ifnextchar[{\fquote@i}{\fquote@i[]}%]
           }%
\def\fquote@i[#1]{%
    \def\tempa{#1}%
    \@ifnextchar[{\fquote@ii}{\fquote@ii[]}%]
                 }%
\def\fquote@ii[#1]{%
    \def\tempb{#1}%
    \@ifnextchar[{\fquote@iii}{\fquote@iii[]}%]
                      }%
\def\fquote@iii[#1]{%
    \def\tempc{#1}%
    \vspace{1em}%
    \noindent%
    \begin{list}{}{%
         \setlength{\leftmargin}{0.1\textwidth}%
         \setlength{\rightmargin}{0.1\textwidth}%
                  }%
         \item[]%
         \begin{picture}(0,0)%
         \put(-15,-5){\makebox(0,0){\scalebox{5}{\textcolor{RoyalRed}{``}}}}%
         \end{picture}%
         \begingroup\itshape}%

 \def\endfquote{%
 \endgroup\par%
 \makebox[0pt][l]{%
 \hspace{0.8\textwidth}%
 \begin{picture}(0,0)(0,0)%
 \put(15,15){\makebox(0,0){%
 \scalebox{5}{\color{RoyalRed}''}}}%
 \end{picture}}%
 
 \ifx\tempa\empty%
 \else%
    \ifx\tempc\empty%
       \hfill\rule{100pt}{0.5pt}\\\mbox{}\hfill\tempa,\ \emph{\tempb}%
   \else%
       \hfill\rule{100pt}{0.5pt}\\\mbox{}\hfill\tempa,\ \emph{\tempb},\ \tempc%
   \fi\fi\par%
   \vspace{0.5em}%
 \end{list}%
 }%
 \makeatother