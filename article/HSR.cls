%%
%% This is file `article/HSR.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\ifdefined\templatesfolder\else
  \def\templatesfolder{latex-templates}
\fi

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{\templatesfolder/article/HSR}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{\templatesfolder/article/Base}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax
\LoadClass{\baseclass}

\input{\templatesfolder/shared/hsr_header}

\input{\templatesfolder/shared/hsr_variables}

\titleaddition{
  \vskip 1.5em
  \def\svgwidth{\logowidth}
  \input{\templatesfolder/shared/logo_hsr.pdf_tex}
}
%%%
%%% End of file `article/HSR.cls'.
