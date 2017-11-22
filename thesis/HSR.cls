%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis/HSR}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{thesis/Base}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\ProcessOptions\relax
\LoadClass{\baseclass}

\def\logowidth{10em}
\def\logoheight{10em / 214 * 71}

\setlength{\headheight}{\logoheight}
\updatetextdimensions

\rightheader{
  \def\svgwidth{\logowidth}
  \input{thesis/logo_hsr.pdf_tex}
}

\university  {\texorpdfstring{\href{https://www.hsr.ch/de/}
                {HSR Hochschule für Technik Rapperswil}}
                {HSR Hochschule für Technik Rapperswil}}
\UNIVERSITY  {\texorpdfstring{\href{https://www.hsr.ch/de/}
                {HSR HOCHSCHULE FÜR TECHNIK RAPPERSWIL}}
                {HSR HOCHSCHULE FÜR TECHNIK RAPPERSWIL}}
\department  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {Department or School Name}}
                {Department or School Name}}
\DEPARTMENT  {\texorpdfstring{\href{Department or School Web Site URL Here (include http://)}
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
                {DEPARTMENT OR SCHOOL NAME (IN BLOCK CAPITALS)}}
\group       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {Research Group Name}}
                {Research Group Name}}
\GROUP       {\texorpdfstring{\href{Research Group Web Site URL Here (include http://)}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
\faculty     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {Faculty Name}}
                {Faculty Name}}
\FACULTY     {\texorpdfstring{\href{Faculty Web Site URL Here (include http://)}
                {FACULTY NAME (IN BLOCK CAPITALS)}}
                {FACULTY NAME (IN BLOCK CAPITALS)}}

%%%
%%% End of file `thesis/HSR.cls'.
