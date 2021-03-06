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
\usepackage[bindingoffset=16mm,left=25mm,right=25mm,top=40mm,bottom=35mm,headheight=15pt,footskip=10mm+.5em]{geometry}
\parindent 0cm
\parskip 1.5ex
\usepackage[all]{nowidow}

% LANGUAGE
\usepackage[ngerman]{babel}
\usepackage[htt]{hyphenat}
\usepackage[style=alphabetic]{biblatex}
\usepackage{csquotes}

% HEADERS
\usepackage[headsepline=1pt]{scrlayer-scrpage}

\clearscrheadfoot

\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}

\rohead{\pagemark}
\lehead{\pagemark}
\lohead{\leftmark}

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

\definecolor{kitcolor}{rgb}{0 0.61 0.50}

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
	colorlinks=false,
	linkbordercolor=kitcolor,
	citebordercolor=kitcolor
		]{hyperref}
\usepackage{import}

% DRAFT
\usepackage{lipsum}

\usepackage{totcount}
\newtotcounter{todocounter}
\setcounter{todocounter}{0}

\newcommand{\citepls}{\stepcounter{todocounter}\textsuperscript{\color{blue}[citation needed]}}
\newcommand{\todo}[1]{\stepcounter{todocounter}{\color{blue}\textsuperscript{[to do: #1]}}}
\newcommand{\rephrase}[1]{\stepcounter{todocounter}{\color{blue}#1\textsuperscript{\color{blue}[rephrase]}}}


% INCLUDES
\input{include/config.tex}
\input{include/sections.tex}
\input{include/cmds.tex}
