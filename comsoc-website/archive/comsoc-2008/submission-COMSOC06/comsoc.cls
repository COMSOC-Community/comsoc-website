%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Latex Class for Paper Submissions to COMSOC-2006
%%% See sample.tex for and example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% v1.0: 05/08/2006 by Ulle Endriss (ulle@illc.uva.nl)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{comsoc}[2006/08/05
^^JLaTeX Document Class for COMSOC Papers by Ulle Endriss]

% Based on article.cls
\LoadClass[a4paper,10pt]{article}
\RequirePackage{calc}
\RequirePackage{url}
\pagestyle{empty}
\sloppy

% Textarea
\setlength{\textwidth}{4.75in}
\setlength{\textheight}{7.5in}

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
  \textbf{\LARGE\thetitle}\\[15pt]
  {\large\theauthor}\\ \mbox{}
  \end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

