%%
%% This is file `thesis/HSR.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\ifdefined\templatesfolder\else
  \def\templatesfolder{latex-templates}
\fi

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis/HSR}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{thesis/Base}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax
\LoadClass{\baseclass}

\input{\templatesfolder/shared/hsr_header}

\input{\templatesfolder/shared/hsr_variables}

%%%
%%% End of file `thesis/HSR.cls'.
