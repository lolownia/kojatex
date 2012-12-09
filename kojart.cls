% -*- latex -*-
\NeedsTeXFormat{LaTeX2e}[1997/06/01]
\ProvidesClass{kojart}[2012/12/02 v0.1 Moja klasa do prac naukowych]


% ---Options---- 
% * Babel
\newcommand{\PassToBabel}{\PassOptionsToPackage{\CurrentOption}{babel}}
\DeclareOption{polish}{\PassToBabel}
\DeclareOption{greek}{%
  \PassToBabel%
  }
\DeclareOption{ngerman}{\PassToBabel}
\DeclareOption{english}{\PassToBabel}
\DeclareOption{german}{\PassToBabel}

%  \AtEndOfClass{\RequirePackage[oxonia]{psgreek}}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass{article}

% ---- packages -----
\RequirePackage{babel}
\RequirePackage{fontspec}
\RequirePackage{paralist}
\RequirePackage{sectsty}
\RequirePackage{luatexbase}

% * Jurabib
\RequirePackage{jurabib}
% \jurabibsetup{
%  	ibidem={strict,name},
%  	titleformat={commasep,italic},
%  	authorformat={abbrv,citationreversed},
%  	}
% \renewcommand*{\jbtitlefont}{\textit}
% \renewcommand*{\jbapifont}{\textit}
% \renewcommand{\bibbtsep}{w: }
% \AddTo\bibsenglish{\def\trans{\ifjbweareinbib tłum.\else\ifjboxford
%     tłum.\else\ifjbchicago tłum.\else Tłum.\fi\fi\fi}}
% \AddTo\bibsenglish{\def\transby{}}
% \AddTo\bibsenglish{\def\Volumename{Tom}}
\bibliographystyle{jurabib}

%% \textwidth 6.1in
%% \textheight 9in
%% \oddsidemargin 0in
%% \evensidemargin 0in
%\oddcolumnmargin 0in
%\marginparwidth 1in
%\reversemarginpar

%\renewcommand{\baselinestretch}{1.2}
\newcommand{\przypis}[2]{\emph{#1}, #2}
\newcommand{\ibid}[1]{Tamże, #1}
%\newcommand{}{}



% \RequirePackage{titlesec}
% \renewcommand\thesection{\roman{section}}
% \renewcommand\thesubsection{\roman{subsection}}
% \newcommand{\first}[1]{\Large{\textsc{#1}}}
% \newcommand{\marg}[1]{\marginpar{\small{\textsc{#1}}}}

% \newcommand{\greka}[1]{\begin{greektext}#1\end{greektext}}
% %\newcommand{\greek}{\selectlanguage{greek}}
% %\newcommand{\greka}{\selectlanguage{greek}}
% \titleformat{\section}[runin]{\sc}{\thesection{}.\quad}{0pt}{}[.]
% \titleformat{\subsection}[runin]{\sc}{\thesubsection{}.\quad}{0pt}{}[.]

\RequirePackage{ifthen}


% -- common polish fixes

\clubpenalty=90000 % to kara za sierotki
\widowpenalty=90000 % nie pozostawia wdów
\brokenpenalty=10000 % nie dzieli wyrazów pomiędzy stronami 
\sloppy

\tolerance4500
\pretolerance250
\hfuzz=1.5pt
\hbadness1450

