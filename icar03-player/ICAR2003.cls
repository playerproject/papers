% Style file prepared by: 
%            Rui Araujo
%            ISR - Institute for Systems and Robotics
%            Dept. of Electrical and Computer Engineering
%            University of Coimbra
%            Coimbra, Portugal
% 2002/12/10

\typeout{*********************************************}
\typeout{Document Style `ICAR2003' <11 November-2002>.}
\typeout{     for ICAR2003 conference papers          }
\typeout{*********************************************}

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{ICAR2003}[2002/26/01 New LaTeX ICAR class] 
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} \ProcessOptions\relax
\LoadClass[twocolumn]{article}
\RequirePackage[dvips]{graphicx}

%% page layout settings
\setlength{\textheight    }{ 23.7cm}
\setlength{\columnsep     }{  2.0pc}
\setlength{\textwidth     }{ 17.2cm}
%\setlength{\footheight    }{ 0.0in}
\setlength{\hoffset       }{ -5.4mm}

\setlength{\topmargin     }{ 0.46cm}
\setlength{\headheight    }{  0.0cm}
\setlength{\headsep       }{  0.0cm}
\setlength{\oddsidemargin }{  0.0cm}
\setlength{\parindent     }{    1pc}
\setlength{\parskip       }{  0.0cm}

\flushbottom

\setcounter{secnumdepth}{3}

\def\affiliation#1{\gdef\@affiliation{#1}}

\newcommand\elevenfont{\fontsize{11}{13}\selectfont}

\def\@maketitle{%
  \newpage
  \null
  \vskip 7.3mm%
  \begin{center}%
  \let \footnote \thanks
    {\Large\bf \@title \par}%
    \vskip 1.4em%
    {\large%\elevenfont
      \lineskip 0.5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
%    \vskip 1em%
%    {\em \@affiliation}%
  \end{center}%
  \par
  \vskip 1.5em
  }

\renewcommand\section{\@startsection {section}{1}{\z@}{12pt plus 2pt minus 2pt}{5pt plus 2pt minus 2pt}{\elevenfont\bf}}
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}{8pt plus 2pt minus 2pt}{2pt plus 2pt minus 2pt}{\normalsize\bf}}
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}{5pt}{-1em}{\normalsize\bf}}
\renewcommand*\subsubsectionmark[1]{.}

\newenvironment{Abstract}{\subsection*{\centering Abstract}\em}{\par\rm\normalsize\unboldmath\medskip}

\newenvironment{Acknowledgment}{\subsection*{Acknowledgments}}{\par\rm\normalsize\unboldmath\medskip}

%\renewenvironment{thebibliography}[1]
%     {\section*{\refname
%        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
%      \small
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            %\advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}


\renewcommand{\@makecaption}[2]{%
  \vspace{10pt}\setbox\@tempboxa\hbox{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize %
    \textit{\textbf{#1:} #2}\par%
  \else
    \begin{center}\textit{\textbf{#1:} #2}\end{center}%
  \fi
}
\newcommand{\@maketabcaption}[2]{%
  \setbox\@tempboxa\hbox{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize %
    \textit{\textbf{#1:} #2}\par%
  \else
    \begin{center}\textit{\textbf{#1:} #2}\end{center}%
  \fi
  \vspace{10pt}
}
\renewcommand{\table}
  {\let\@makecaption\@maketabcaption\@float{table}}

\pagestyle{empty}

% Debug floats manually
%\def\topfraction{1.0}
%\def\dbltopfraction{1.0}
%\def\bottomfraction{1.0}
%\def\textfraction{0.0}
%\def\floatpagefraction{0.8}
%\def\dblfloatpagefraction{0.8}

