\ProvidesClass{00-include/pnp}
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

% PAGESTYLES
\usepackage{fancyhdr}
\pagestyle{empty}

\fancypagestyle{fancy-info}{%
\fancyhf{}%
\pagenumbering{Roman}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Informationen\hfill\includegraphics[width=3mm]{01-img/quill.png}}
}

\fancypagestyle{fancy-story}{%
\fancyhf{}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Story\hfill\includegraphics[width=3mm]{01-img/quill.png}}
}

\fancypagestyle{fancy-chars}{%
\fancyhf{}%
\fancyfoot[R]{\thepage}%
\fancyhead[L]{\adventurename$\;$- Charaktere\hfill\includegraphics[width=3mm]{01-img/quill.png}}
}

\setlength\headheight{26pt}
\rhead{\includegraphics[height=4mm]{01-img/quill.png}}
\renewcommand{\headrulewidth}{0.6pt}

% COLORS
\usepackage{color}
\definecolor{RoyalRed}{RGB}{157,16, 45}
\definecolor{RoyalBlue}{RGB}{0,70,202}

% CHAPTERS
\usepackage[ ]{titlesec}

\titleformat{\chapter}[display]{}{}{}{\Huge\bfseries}
\titleformat{\section}[display]{}{}{}{\Large\bfseries}
\titleformat{\subsection}[display]{}{}{}{\large\bfseries}
\titleformat{\subsubsection}[display]{}{}{}{\large\bfseries}
\titlespacing{\chapter}{0pt}{-1em}{2em}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{15pt}{5pt}{0pt}

% TABLES, GRAPHICS
\usepackage{booktabs}
\usepackage[pdftex]{graphicx}
\usepackage[normal,font={small,color=black},labelfont=bf,margin=2em]{caption}
\usepackage{subcaption}
\usepackage{pgf}
\usepackage{dpfloat}
\usepackage{listings}
\usepackage[most]{tcolorbox}
\tcbuselibrary{breakable}

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
\usepackage{pbox}

% DRAFT
\usepackage{lipsum}

\usepackage{totcount}
\newtotcounter{todocounter}
\setcounter{todocounter}{0}

\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

\usepackage[numberedsection=nameref,toc]{glossaries}

% INCLUDES
\input{adventure_config.tex}
\input{00-include/sections.tex}
\input{00-include/cmds.tex}
\input{adventure_characters.tex}

% GLOSSARY
\newglossarystyle{list-custom}{%
\glossarystyle{list}
\renewcommand*{\glossentry}[2]{%
\item[\Large\color{violet}\glsentryitem{##1}%
\glstarget{##1}{\glossentryname{##1}}]
\glossentrydesc{##1}\vspace{1em}\newline\color{violet}\textbf{ERSCHEINT:}\color{black}\glspostdescription\space ##2}}

\makenoidxglossaries
\setglossarystyle{list-custom}
