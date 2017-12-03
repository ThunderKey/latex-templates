%%
%% This is file `article/HSR.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{article/HSR}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{article/Base}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax
\LoadClass{\baseclass}

\input{shared/hsr_header}

\input{shared/hsr_variables}

\titleaddition{
  \vskip 1.5em
  \def\svgwidth{\logowidth}
  \input{shared/logo_hsr.pdf_tex}
}
%%%
%%% End of file `article/HSR.cls'.
