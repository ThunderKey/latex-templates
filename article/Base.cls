%%
%% This is file `article/Base.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\ifdefined\templatesfolder\else
  \def\templatesfolder{latex-templates}
\fi

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{\templatesfolder/article/Base}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{article}
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

\input{\templatesfolder/shared/setup_page}

\newcommand{\titleaddition}[1]{\def\@titleaddition{#1}}
\titleaddition{}

% Title Page
\def\@maketitle{%
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \newpage
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \authornames
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}\par
    \@titleaddition
  \end{center}%
  \vskip 4em
}
