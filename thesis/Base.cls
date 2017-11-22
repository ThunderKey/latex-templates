%%
%% This is file `thesis/Base.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis/Base}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi
  }
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\usepackage[utf8]{inputenc}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
  \btypeout{Declaration of Authorship}
  \addtotoc{Declaration of Authorship}
  \thispagestyle{plain}
  \null\vfil
  %\vskip 60\p@
  \begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
  %\vskip 60\p@
  {\normalsize #1}
  \vfil\vfil\null
  %\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{
  \ifcase\month\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December
  \fi
  \space \number\year
}
\usepackage{setspace}
\onehalfspacing

\usepackage{calc}
\setlength{\parindent}{2ex}
\setlength{\parskip}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\oddsidemargin}{0pt} % right margin (+ 1 inch)
\setlength{\marginparwidth}{0.5in} % margin notes
\setlength{\headheight}{0.3in}
\setlength{\footskip}{0.5in}
\newcommand{\updatetextdimensions}{
  \setlength{\textwidth}{\paperwidth - \marginparwidth - 2in - \voffset - \voffset}
  \setlength{\textheight}{\paperheight - \topmargin - 2in - \topmargin - \headheight - \headsep - \footskip - \hoffset - \hoffset}
}
\updatetextdimensions

\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

%---------------------------
\usepackage{fancyhdr}

% Header helpers
\newcommand{\leftheader}[1]{\def\leftheadervalue{#1}}
\newcommand{\rightheader}[1]{\def\rightheadervalue{#1}}
\newcommand{\centerheader}[1]{\def\centerheadervalue{#1}}
\newcommand{\leftfooter}[1]{\def\leftfootervalue{#1}}
\newcommand{\rightfooter}[1]{\def\rightfootervalue{#1}}
\newcommand{\centerfooter}[1]{\def\centerfootervalue{#1}}

\leftheader{\rightmark}
\centerheader{}
\rightheader{}
\leftfooter{}
\centerfooter{\thepage}
\rightfooter{}

\lhead[\rightheadervalue]{\leftheadervalue}
\chead{\centerheadervalue}
\rhead[\leftheadervalue]{\rightheadervalue}
\lfoot[\rightfootervalue]{\leftfootervalue}
\cfoot{\centerfootervalue}
\rfoot[\leftfootervalue]{\rightfootervalue}
%---------------------------

% set spacing for the chapters
\usepackage{titlesec}
\titleformat{\chapter}[display]{\normalfont\huge\bfseries}{\chaptertitlename~\thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{10pt}{20pt}

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{
  \btypeout{\thechapter\space #1}
  \markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}
}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
  language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
      \usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
  \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfillment for the \par}
      {\large degree of Doctor of Philosophy \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par}
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \cleardoublepage
}

\newcommand{\declarationpage}[0]{
  % Declaration Page required for the Thesis, your institution may give you a different text to place here
  \Declaration{
    \addtocontents{toc}{\vspace{1em}}  % Add a gap in the Contents, for aesthetics

    I, \authornames, declare that this thesis titled, `\@title' and the work presented in it are my own. I confirm that:

    \begin{itemize}
      \renewcommand\labelitemi{\tiny{$\blacksquare$}}
      \item This work was done wholly or mainly while in candidature for a research degree at this University.
      \item Where any part of this thesis has previously been submitted for a degree or any other qualification at this University or any other institution, this has been clearly stated.
      \item Where I have consulted the published work of others, this is always clearly attributed.
      \item Where I have quoted from the work of others, the source is always given. With the exception of such quotations, this thesis is entirely my own work.
      \item I have acknowledged all main sources of help.
      \item Where the thesis is based on work done by myself jointly with others, I have made clear exactly what was done by others and what I have contributed myself.
    \end{itemize}

    Signed:\\
    \rule[1em]{25em}{0.5pt}  % This prints a line for the signature

    Date:\\
    \rule[1em]{25em}{0.5pt}  % This prints a line to write the date
  }
  \clearpage  % Declaration ended, now start a new page
}
\newcommand{\quotepage}[2]{
  \thispagestyle{empty}  % No headers or footers for the following pages

  \null\vfill
  % Now comes the "Funny Quote", written in italics
  \textit{``#1''}

  \begin{flushright}
    #2
  \end{flushright}

  \vfill\vfill\vfill\vfill\vfill\vfill\null
  \clearpage  % Funny Quote page ended, start a new page
}
\newcommand{\abstractpage}[1]{
  % The Abstract Page
  \addtotoc{Abstract}  % Add the "Abstract" page entry to the Contents
  \abstract{
    \addtocontents{toc}{\vspace{1em}}  % Add a gap in the Contents, for aesthetics
    #1
  }

  \clearpage  % Abstract ended, start a new page
}
\newcommand{\acknowledgementspage}[1]{
  % The Acknowledgements page, for thanking everyone
  \acknowledgements{
    \addtocontents{toc}{\vspace{1em}}  % Add a gap in the Contents, for aesthetics
    #1
  }
  \clearpage  % End of the Acknowledgements
}
\newcommand{\tableofcontentspage}[0]{
  \tableofcontents  % Write out the Table of Contents
}
\newcommand{\listoffigurespage}[0]{
  \listoffigures  % Write out the List of Figures
}
\newcommand{\listoftablespage}[0]{
  \listoftables  % Write out the List of Tables
}
\newcommand{\listofabbreviations}[1]{
  \setstretch{1.5}  % Set the line spacing to 1.5, this makes the following tables easier to read

  \listofsymbols{ll}{ % Include a list of Abbreviations (a table of two columns)
    #1
  }

  \setstretch{1.3}  % Return the line spacing back to 1.3
  \clearpage  % Start a new page
}
\newcommand{\symbolspage}[1]{
  \setstretch{1.5}  % Set the line spacing to 1.5, this makes the following tables easier to read

  \listofnomenclature{lll}{  % Include a list of Symbols (a three column table)
    #1
  }

  \setstretch{1.3}  % Return the line spacing back to 1.3
}
\newcommand{\dedicationpage}[1]{
  % End of the pre-able, contents and lists of things
  % Begin the Dedication page

  \thispagestyle{empty}  % Page style needs to be empty for this page
  \dedicatory{#1}

  \addtocontents{toc}{\vspace{2em}}  % Add a gap in the Contents, for aesthetics
}

\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par}
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \facname \par}
    {\normalsize \deptname \par}
    \bigskip
    {\normalsize Doctor of Philosophy\par}
    \bigskip
    {\normalsize\bf \@title \par}
    \medskip
    {\normalsize by \authornames \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
  \refstepcounter{dummy}
  \addcontentsline{toc}{chapter}{#1}
}
\renewcommand\tableofcontents{
  \btypeout{Table of Contents}
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter*{\contentsname
          \@mkboth{
            \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
          \@starttoc{toc}
      \if@restonecol\twocolumn\fi
     \cleardoublepage
  }\end{spacing}
}
\renewcommand\listoffigures{
  \btypeout{List of Figures}
  \addtotoc{List of Figures}
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse
      \fi
      \chapter*{\listfigurename
        \@mkboth{\MakeUppercase\listfigurename}
                {\MakeUppercase\listfigurename}}
      \@starttoc{lof}
      \if@restonecol\twocolumn\fi
      \cleardoublepage
  }\end{spacing}
}
\renewcommand\listoftables{
  \btypeout{List of Tables}
  \addtotoc{List of Tables}
  \begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
        \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
      \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
  }\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
  \btypeout{\listsymbolname}
  \addtotoc{\listsymbolname}
  \chapter*{
    \listsymbolname
    \@mkboth{\MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}
  }
  \begin{longtable}[c]{#1}#2\end{longtable}\par
  \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
  \btypeout{\listconstants}
  \addtotoc{\listconstants}
  \chapter*{
    \listconstants
    \@mkboth{\MakeUppercase\listconstants}{\MakeUppercase\listconstants}
  }
  \begin{longtable}[c]{#1}#2\end{longtable}\par
  \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
  \btypeout{\listnomenclature}
  \addtotoc{\listnomenclature}
  \chapter*{
    \listnomenclature
    \@mkboth{\MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}
  }
  \begin{longtable}[c]{#1}#2\end{longtable}
  \par
  \cleardoublepage
}

\newcommand\acknowledgementstitle{Acknowledgements}
\newcommand\acknowledgements[1]{
  \btypeout{\acknowledgementstitle}
  \addtotoc{\acknowledgementstitle}
  \chapter*{
    \begin{center}
      \acknowledgementstitle
      \@mkboth{\MakeUppercase\acknowledgementstitle}{\MakeUppercase\acknowledgementstitle}
    \end{center}
  }
  #1
  \cleardoublepage
}
\newcommand\dedicatory[1]{
  \btypeout{Dedicatory}
  \thispagestyle{plain}
  \null\vfil
  \vskip 60\p@
  \begin{center}{\Large \sl #1}\end{center}
    \vfil\null
  \cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput

%%
%% End of file `thesis/Base.cls'.
