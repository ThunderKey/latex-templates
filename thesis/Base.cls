%%
%% This is file `thesis/Base.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\ifdefined\templatesfolder\else
  \def\templatesfolder{latex-templates}
\fi

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

% Title Page
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

% Load defaults
\input{\templatesfolder/shared/setup_page}

% set spacing for the chapters
\usepackage{titlesec}
\titleformat{\chapter}[display]{\normalfont\huge\bfseries}{\chaptertitlename~\thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{10pt}{20pt}

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

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{
  \btypeout{\thechapter\space #1}
  \markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}
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

\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse
}
