\ProvidesClass{include/pnp}
\LoadClass[11pt,a4paper,titlepage,openany]{scrbook}

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
\pagestyle{empty}

\fancypagestyle{fancy-info}{%
\fancyhf{}%
\pagenumbering{Roman}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Informationen\hfill\includegraphics[width=3mm]{img/quill.png}}
}

\fancypagestyle{fancy-story}{%
\fancyhf{}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Story\hfill\includegraphics[width=3mm]{img/quill.png}}
}

\fancypagestyle{fancy-chars}{%
\fancyhf{}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Charaktere\hfill\includegraphics[width=3mm]{img/quill.png}}
}

\setlength\headheight{26pt}
\rhead{\includegraphics[height=4mm]{img/quill.png}}
\renewcommand{\headrulewidth}{0.6pt}

% CHAPTERS
\usepackage{minitoc}
\usepackage{color}
\definecolor{RoyalRed}{RGB}{157,16, 45}
\usepackage[ ]{titlesec}

\titleformat{\chapter}[display]{}{}{}{\Huge\bfseries}
\titleformat{\section}[display]{}{}{}{\Large\bfseries}
\titleformat{\subsection}[display]{}{}{}{\large\bfseries}


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

% GLOSSARY
\usepackage[automake]{glossaries}
\newglossarystyle{list-custom}{%
\glossarystyle{list}
% \renewcommand*{\glossentry}[2]{%
% 		\item[\color{RoyalRed}\MakeUppercase{\fontsize{12}{12}\selectfont\sffamily\underline{\glsentryname{##1}}}]
% 		\glossentrydesc{##1}\vspace{1em}\newline\vspace{2em}\color{RoyalRed}
% 		\textbf{Auftreten:}\color{black}\glspostdescription\space ##2
% 		\glstarget{##1}{\textbf{##2}}
% }
\renewcommand*{\glossentry}[2]{%
\item[\Large\color{RoyalRed}\glsentryitem{##1}%
\glstarget{##1}{\glossentryname{##1}}]
\glossentrydesc{##1}\vspace{1em}\newline\color{RoyalRed}\textbf{AUFTRETEN:}\color{black}\glspostdescription\space ##2}%
}


\loadglsentries{sections/char}
\makeglossary
\setglossarystyle{list-custom}
