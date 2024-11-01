%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Latex Class for Paper Submissions to COMSOC-2010
%%% See sample.tex for an example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% v1.1: 20/03/2008 by Ulle Endriss (ulle@illc.uva.nl)
%%% minimal updates by Vincent Conitzer, April 18, 2010
%%% minimal update (adding NatBib) by Omer Lev, January 23, 2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{comsoc2023}[2008/03/25
^^JLaTeX Document Class for COMSOC Papers (A4 format) by Ulle Endriss]

% Based on article.cls
\LoadClass[a4paper,10pt]{article}
\RequirePackage{url}
\RequirePackage[square,numbers]{natbib}
\pdfpagewidth=\paperwidth
\pdfpageheight=\paperheight
\pagestyle{empty}
\sloppy

% Textarea
\setlength{\textwidth}{5.5in}
\setlength{\textheight}{8.5in}
\setlength{\oddsidemargin}{0.35in}
\setlength{\evensidemargin}{0.0in}
\setlength{\topmargin}{0in}

% Define title
\renewcommand{\title}[1]{\renewcommand{\thetitle}{#1}}
\newcommand{\thetitle}{Please define a title using the \texttt{$\backslash$title\{\ldots\}} command!}

% Define author(s)
\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}
\newcommand{\theauthor}{Please define authors using the \texttt{$\backslash$author\{\ldots\}} command!}

% Define abstract
\renewenvironment{abstract}{\begin{center}\small\textbf{Abstract}\\[8pt]
\begin{minipage}{.85\textwidth}}{\end{minipage}\end{center}}

% Define contact details for an author
\newenvironment{contact}{\begin{center}\begin{tabular}{@{}l}}{\end{tabular}\hfill\mbox{}\end{center}}

% Define email address
\newcommand{\email}[1]{Email:~\url{#1}}

% Start by printing title and author names
\AtBeginDocument{%  
  \begin{center}
  {\LARGE\textbf{\thetitle}\par}
  \vskip 1.7em
  {\large\theauthor}
  \vskip 2em
  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%