\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{peqslide}[2016/03/02 Presentations]

\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{beamer}%
}

\ProcessOptions\relax
\LoadClass{beamer}

\RequirePackage[sc]{mathpazo}
\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{ragged2e}
\RequirePackage{amsmath,amssymb}
\RequirePackage[listings,theorems]{tcolorbox}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{outlines,pgf}
\tcbuselibrary{skins,raster,fitting}

\definecolor{vermelho}{RGB}{163,0,0}
\definecolor{vermelho2}{RGB}{244,147,147}

\usetheme{CambridgeUS}
\usefonttheme[stillsansseriflarge]{structurebold}
\useinnertheme{rectangles}

\setbeamercolor{item projected}{bg=vermelho}  %Cor dos tópicos 
\setbeamercolor{block body}{bg=black!10!white}
\setbeamercolor{block title}{bg=black!02!white,fg=vermelho}
\setbeamercolor{caption name}{fg=vermelho}
\setbeamercolor{itemize item name}{fg=vermelho}
\setbeamercolor{itemize item}{fg=vermelho}
\setbeamercolor{itemize subitem name}{fg=vermelho}
\setbeamercolor{itemize subitem}{fg=vermelho}
\setbeamercolor{title}{bg=vermelho,fg=white}

\setbeamerfont{caption}{size=\scriptsize}
\setbeamerfont{section in toc}{size=\small}
\setbeamerfont{subsection in toc}{size=\small}
\setbeamerfont{subsubsection in toc}{size=\small}
\setbeamertemplate{section in toc}[square unnumbered]
\setbeamertemplate{caption}[numbered]	
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{blocks}[default]

\setbeamercovered{transparent,still covered={\opaqueness<1->{0}},again covered={\opaqueness<1->{30}}}

\newcommand{\nn}{\nonumber}
\newcommand{\jt}{\justifying}
\newcommand{\vf}{\vspace*{99cm}}

\newtcolorbox{nblock}[2][]{%
	enhanced,coltitle=vermelho,colbacktitle=black!10!white,colback=black!02!white,colframe=black!50!white,adjusted title={#2},sharpish corners=all, fonttitle=\bfseries ,boxrule=0.2mm,titlerule=0mm,drop fuzzy shadow,#1}
 
\newtcolorbox{alblock}[2][]{%
 enhanced,colbacktitle=vermelho,colback=vermelho!10!white,colframe=vermelho,adjusted title={#2},sharpish corners=all, fonttitle=\bfseries ,boxrule=0.2mm,titlerule=0mm,drop fuzzy shadow=vermelho,#1}
 
\newtcolorbox{cblock}[2][]{%
	enhanced,coltitle=white,colbacktitle=black,colback=black!02!white,colframe=black!50!white,adjusted title={#2},sharpish corners=all, fonttitle=\bfseries ,boxrule=0.2mm,titlerule=0mm,drop fuzzy shadow,#1, top = 0mm, bottom = 0mm}

\newtcboxfit{\nfitbox}[1][]{%
	enhanced,coltitle=vermelho,colbacktitle=black!10!white,colback=black!02!white,colframe=black!50!white,sharpish corners=all, fonttitle=\bfseries ,boxrule=0.2mm,titlerule=0mm,drop fuzzy shadow,#1}

\institute[UFRJ/COPPE/PEQ]{\includegraphics[height=.75cm]{coppe-logo}\\ Universidade Federal do Rio de janeiro \\ Instituto Alberto Luiz Coimbra de Pós-Graduação e Pesquisa de Engenharia \\ Programa de Engenharia Química}

\logo{\includegraphics[scale=0.15]{logopeq}}

\def\*#1{\mathbf{#1}}
\def\|#1{\boldsymbol{#1}}