%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Latex Class for Paper Submissions to COMSOC-2025
%%% See comsoc2025.tex for an example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% v1.1: 20/03/2008 by Ulle Endriss (ulle@illc.uva.nl)
%%% minimal updates by Vincent Conitzer, April 18, 2010
%%% minimal update (adding NatBib) by Omer Lev, January 23, 2023
%%% update by Jiehua Chen, March 21, 2025:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{comsoc2025}[2025/03/21 LaTeX Document Class for COMSOC Papers (A4 format)]

% --- Class options ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% --- Load base class and essential packages ---
\LoadClass[a4paper,11pt]{article}

% --- Required packages ---
\RequirePackage{url}            % URL handling
\RequirePackage[square,numbers]{natbib}  % Bibliography styling
\RequirePackage{geometry}       % Page geometry (replaces fullpage)
\RequirePackage[T1]{fontenc}    % Font encoding
\RequirePackage[tt=false, type1=true]{libertine}  % Libertine font
\RequirePackage{microtype}      % Typography improvements
\RequirePackage{hyperref}       % Hyperlinks
\RequirePackage{graphicx}       % Graphics
\RequirePackage{xcolor}         % Colors
\RequirePackage{enumitem}       % Better list environments
\RequirePackage{booktabs}       % Better tables

% --- Page geometry ---
\geometry{
  a4paper,
  margin=1in,          % 1 inch margins all around
  includehead=false,   % Header is not part of the text body
  includefoot=false    % Footer is not part of the text body
}

% --- Document settings ---
\sloppy                % Prevents text from extending into margins
\setlength{\parindent}{0pt}  % No paragraph indentation
\setlength{\parskip}{6pt}    % Paragraph spacing

% --- Title and author commands initialization ---
\newcommand{\thetitle}{}
\newcommand{\theauthor}{}

% --- Hyperref setup ---
\hypersetup{
  colorlinks=true,
  linkcolor=blue,
  citecolor=blue,
  urlcolor=blue,
  pdfauthor={\theauthor},
  pdftitle={\thetitle}
}

% --- Title and author commands ---
\renewcommand{\title}[1]{\renewcommand{\thetitle}{#1}}

\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}

% --- Abstract environment ---
\renewenvironment{abstract}{
  \begin{center}
    \small\textbf{Abstract}\\[8pt]
    \begin{minipage}{.85\textwidth}
}{
    \end{minipage}
  \end{center}
  \vspace{1em}
}

% --- Contact details environment ---
\newenvironment{contact}{
  \vspace{0.5em}
  \begin{center}
    \begin{tabular}{@{}l}
}{
    \end{tabular}
  \end{center}
  \vspace{0.5em}
}

% --- Email command ---
\newcommand{\email}[1]{Email:~\url{#1}}

% --- Affiliation command ---
\newcommand{\affiliation}[1]{Affiliation:~#1}

% --- Keywords command ---
\newcommand{\keywords}[1]{
  \vspace{0.5em}
  \noindent\textbf{Keywords:} #1
  \vspace{0.5em}
}

% --- Section formatting ---
\renewcommand{\section}{\@startsection{section}{1}{0pt}
  {-3.5ex plus -1ex minus -.2ex}
  {2.3ex plus .2ex}
  {\normalfont\large\bfseries}}

\renewcommand{\subsection}{\@startsection{subsection}{2}{0pt}
  {-3.25ex plus -1ex minus -.2ex}
  {1.5ex plus .2ex}
  {\normalfont\normalsize\bfseries}}

% --- Header with title and author ---
\AtBeginDocument{%  
  \begin{center}
    {\LARGE\textbf{\thetitle}\par}
    \vskip 1.7em
    {\large\theauthor}
    \vskip 2em
  \end{center}
}

% --- Improved figure and table captions ---
\RequirePackage[labelfont=bf,font=small]{caption}

% --- Bibliography settings ---
\setlength{\bibsep}{0.0pt}
\bibliographystyle{plainnat}

% --- Footer ---
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}

