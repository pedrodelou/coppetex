% Classe para criação de documentos PEQ

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{peqdoc}[2016/02/29 Documentos PEQ]

\DeclareOption{prova}{\def \prova}
\DeclareOption*{% 
\PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage{graphicx}
\RequirePackage[top=3.5cm,bottom=4cm,left = 2cm, right = 2cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{tipa}
\RequirePackage{amsmath,amssymb,mathtools,nccmath}
\usepackage[labelfont=bf]{caption}

\titleformat{\section}
{\normalfont\Large\bfseries}
{\thesection. \hskip 0pt}
{0pt}
{}

\titleformat{\subsection}
{\normalfont\large\bfseries}
{\thesubsection. \hskip 0pt}
{0pt}
{}

\titleformat{\subsubsection}
{\normalfont\normalsize\bfseries}
{\thesubsubsection. \hskip 0pt}
{0pt}
{}

\pagestyle{fancy}
\linespread{1.25}
\setlength{\parskip}{12pt}
\setlength{\parindent}{1cm}
\setlength\headheight{50pt}
\lhead{\includegraphics[width=2cm]{logopeq.png}}
\rhead{Programa de Engenharia Química \\ Instituto Alberto Luís Coimbra de Pós-Graduação e Pesquisa de Engenharia \\ Universidade Federal do Rio de Janeiro}

\def\informe#1{\def\@informe{#1}}
\newcommand{\printinforme}{\@informe}
\informe{}

\DeclareRobustCommand{\maketitle}{%
\begin{center}
\Large\textbf{\@title}\\[1ex]
\normalsize\@author\\[2ex]
\ifx \prova \undefined
\else
	\raggedright Aluno(a): \rule{8cm}{0.4pt}\\[1ex] Nota/Conceito: \rule{2cm}{0.4pt}\\[2ex]
\fi
\centering\printinforme \end{center}
}

\def\*#1{\mathbf{#1}}
\def\|#1{\boldsymbol{#1}}
\allowdisplaybreaks