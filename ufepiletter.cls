% \iffalse              % -*- latex -*-
 % This file is written so that it will print the documentation if
 % LaTeXed directly, but will act as a class file if called as such.
 % $Id: ufmathletter.cls,v 1.1 2007/06/13 18:55:28 mitchell Exp mitchell $
 % \fi
 \newif\ifUFMdoc
 {\makeatletter
  \ifx\@currname\@empty\global\UFMdoctrue\fi}

 \ifUFMdoc
 \expandafter
 \ProvidesFile
 \else
 \expandafter
 \ProvidesClass
 \fi
               {ufepiletter} [2015/05/12 v0.1  (CABP - epi letterhead, derived from math letterhead)]
 \ifUFMdoc
 \else
   \NeedsTeXFormat{LaTeX2e}
 \fi
 % \iffalse
 %  These lines are the driver for printing the documentation.  When
 %  latexed as documentation instead of used as a class file, they will
 %  be used the first time through the file.
 \ifUFMdoc
 \documentclass[12pt]{article}
 \usepackage{doc}
 \typeout{*** Documentation for ufepiletter.cls.***}
 \typeout{*** To get listing and techical documentation***}
 \typeout
 {*** comment out the line \string\OnlyDescription\space in this file***}
 % \OnlyDescription
 \CodelineIndex
 \EnableCrossrefs
  \RecordChanges
 \begin{document}
   \DocInput{ufepiletter.cls} %% This same file is read in again here.
   \PrintIndex
   \PrintChanges
 \end{document}
 \fi
 % \fi
 % \newcommand\filenam[1]{\texttt{#1}}
 % \changes{0.1}{1994 May 15}{initial version}
 % \changes{1.1}{2002 June 27}{Use univ. lettermark instead of just seal}
 % \changes{1.2}{2002 Nov 16}{Remove minus stretch above return address.}
 % \changes{2.0}{2007 June 11}{Adapted to new prescribed letterhead.}
 % \GetFileInfo{ufepiletter.cls}
 % \title{UF mathdepartment letter style}
 % \author{Bill Mitchell}
 % \date{ver. 2.0, June 15 2007  (printed \today)}
 % \maketitle
 % \MakeShortVerb{\|}
 % \DoNotIndex{\empty, \arraystretch, \color, \def, \hskip,
 %   \ignorespaces, \indentedwidth, \kern,
 %   \medskipamount, \name, \newtoks, \noindent, \relax, \stopbreaks,
 %   \strut, \tabcolsep,} \DoNotIndex{\the,\fill}
 % \makeatletter
 % \DoNotIndex{\@empty,\@date,\@evenfoot,\@evenhead,\@oddfoot,\@oddhead}
 % \makeatother
 % \DoNotIndex{\raggedright,\raisebox,\renewcommand,\RequirePackage,
 %   \setlength,\subsection,\textheight,\textwidth,\thispagestyle,\topmargin,
 %   \usebox,\usepackage,\vbox,\vspace,\vss,\\,\baselineskip,\color,\headsep,
 %   \ifx,}
 % \DoNotIndex{\CurrentOption,\DeclareOption,\DeclareFixedFont,
 %   \endlargethispage,
 %   \evensidemargin,\fi,\footskip,\headheight,\hfill,\hspace,\hss,\mbox,
 %   \newcommand,\newif,\newlength,\nobreak,\oddsidemargin,\par,\parbox,
 %   \parskip,\begin,\end,\else,\empty,\enlargethispage,\includegraphics,
 %   \LoadClass,\newsavebox,\opening,\PassOptionsToClass,\ProcessOptions,
 %   \hrule}
 % \section{Usage}
 % This file is designed as a replacement for the \LaTeXe\ standard
 % letter class.  The best way to use it is to get a copy of the
 % file \filenam{blank-ufepiletter.tex}, which will be in the
 % same directory as this file.
 %  That file is a
 % template which is to be filled out to create a letter.  You will
 % probably want to make your own template file: get
 % a copy of the general template file and fill your personal
 % information and other items which will be the same for all your
 % letters.
 %
 % More information on using the \LaTeX\ letter class may be found in
 % most books which cover \LaTeX.  This note discusses a few ways in
 % which the UF mathdepartment letter class file differs from the
 % standard letter class, and gives a few extra hints.
 %
 % \paragraph{Personal information.}
 % \DescribeMacro{\date}
 % \DescribeMacro{\name}
 % \DescribeMacro{\location}
 % \DescribeMacro{\telephone}
 % \DescribeMacro{\signature}
 % \DescribeMacro{\UFMtitle}
 % \DescribeMacro{\UFMemail}
 % These macros should  be used in the prefix, before
 % |\begin{document}|, to give the personal information used in the
 % return address and closing.  All are optional except |\name|, and   all
 % are used as follows:
 % \begin{verbatim}
 %    \name{Dr. Joe Doakes}
 %    \signature{Joe Doakes\\President}
 % \end{verbatim}
 % Note that |\\| can be used to break an entry into more than one
 % line.
 % By default, |\signature| will be set to the value of |\name| and
 % |\date| will be the current date.
 % all others will be omitted if not specified.
 %  All of these commands are from the standard \LaTeX\ letter class
 %  except those
 % starting with |UFM|.
 %
 % \paragraph{Changing line width.}
 % The page parameters |\oddsidemargin| and |\textwidth| may be changed
 % by the user.  For example, the following commands will shrink the
 % line length by
 % 1 inch.
 % \begin{verbatim}
 % \addtolength{\textwidth}{-1in}
 % \addtolength{\oddsidemargin}{.5in}
 % \end{verbatim}
 %
 % \paragraph{Avoiding page breaks.}
 % This seems to be better at fitting a letter onto one page than my
 % last attempt at a letterhead style, but sometimes it still needs help.
 %  The following command  will force the whole letter onto one page,
 %  if it is at all reasonable.  It should appear somewhere in
 % the body of the letter.
 % \begin{verbatim}
 % \enlargethispage*{2in}
 % \end{verbatim}
 % Also, the letter class strongly avoids breaking a
 % paragraph between pages, so it may help to break a paragraph into
 % two.

 % \paragraph{Miscellaneous.}
 % \DescribeMacro{nofound}
 % Three new options are
 % provided.   The option \verb|nofound|, used as follows,
 % will supress printing the slogan "The Foundation of The Gator
 % Nation" at the bottom of the first page.
 % \begin{verbatim}
 %    \documentclass[nofound]{ufepiletter}
 % \end{verbatim}%
 %
 % \DescribeMacro{color}
 % \DescribeMacro{bw}
 %  The option |color| should be used with a color printer.   The
 %  default is black and white, which need not be explicitly specified
 %  by the option |bw|.
 %
 %  The standard print size options, such as |10pt|, |11pt| and |12pt|
 %  may be used as normal.  They will not affect the letterhead.
 %
 % \DescribeMacro{\hoffset}
 % \DescribeMacro{\voffset}
 % Printers vary in the placement of printing on the page.  The
 % commands |\hoffset| and |\voffset| may be used to adjust the output
 % from a particular printer.  They is used as follows:
 % \begin{center}
 %    |\setlength{\hoffset}{| \meta{error} |in}|
 % \end{center}
 % where \meta{error} is the distance (in inches) which the letterhead
 % should be moved to the \emph{right}.  A negative value will move it
 % left.   For vertical movement, a positive argument to |\voffset|
 % will move the printing down.   According to university
 % specifications, the left side of the Logo should be
 % 2.75 picas (.45 inch) from the left edge and the top of the Logo
 % should be  3.75 picas (.625 inch) from the top edge.
 %
 % \paragraph{The full documentation and code.}
 % In
 % order to print out full documentation
 % on this file (including a listing of the code) comment out the line
 %  with the command |\OnlyDescription|  (this is about line~33
 % of the file).
 %
 % Send any bug reports or suggestions to Bill Mitchell,
 % \emph{mitchell@math.ufl.edu}.
 % \StopEventually{}
 %
 % \section{The code}
 % This class is derived from the standard \LaTeXe\ letter class,
 % originally following ideas  in Appendix~C of \emph{A Guide to
 % \LaTeXe} by Kopka and Daly.    We begin by declaring the options,
 % then load the |letter| class.
 % \begin{macro}{nofound}
 %   \begin{macro}{color}
 %     \begin{macro}{bw}
 % All three options simply set a flag for later reference.   Note
 % that  the option |bw| actually does nothing, since it is the
 % default.  However that may change.
 %    \begin{macrocode}
 \newif\ifnofoundation             % Don't print foundation line
 \DeclareOption{nofound}{\nofoundationtrue}
 \newif\ifcolor
 \DeclareOption{color}{\colortrue}
 \DeclareOption{bw}{\colorfalse} % Default
 %    \end{macrocode}
 %  \end{macro}
 % \end{macro}
 % \end{macro}
 % \begin{macrocode}
 \DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
 \ProcessOptions
 \LoadClass{letter}
 %    \end{macrocode}

 % \subsection{Personal information}
 % Here we deal with things which are likely to need to be modified.
 % In particular, the part of the letterhead giving the department
 % name and the departmental address is specified here.   The personal
 % data of the actual letter writer is specified in the letter file;
 % howver it is probable that the way such material is presented
 % (which is specified here) could be improved.
 %
 % \begin{macro}{\fromname}
 % \begin{macro}{\fromlocation}
 % \begin{macro}{\telephonenum}
 % \begin{macro}{\UFM@title}
 % \begin{macro}{\UFM@email}
 % \begin{macro}{\UFMtitle}
 % \begin{macro}{\UFMemail}
 % The commands |\UFM@title| and |\UFM@email| are initially defined to
 % be empty.  User level commands  |\UFMtitle{|\meta{title}|}| and
 % |\UFMemail{|\meta{email address}|}| are provided to set them.
 % The commands |\fromname|, |\fromlocation|, and |telephonenum| are
 % handled similarly by the standard \LaTeX\ letter class.
 %    \begin{macrocode}
 \newcommand*\UFMtitle[1]{\def\UFM@title{#1}}
 \UFMtitle{}
 \newcommand*\UFMemail[1]{\def\UFM@email{#1}}
 \UFMemail{}
 \newcommand*\UFMurl[1]{\def\UFM@url{#1}}
 \UFMurl{}
 %    \end{macrocode}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}

% \begin{macro}{\UFMunitnames}
% This would be modified for use by a different department.   This was
% written to agree with the illustration in the university
% specifications.   It might be more useful to have the Department be
% the ``primary unit'', and the text of the specifications seems to me
% to suggest this alternative as the department is the unit to which
% replies should be sent.
% \begin{macrocode}
\newcommand{\UFMunitnames}{
     \setlength{\tabcolsep}{0pt}
     \begin{tabular}[t]{l}
       {\blue\PRIMARYUNITFNT Emerging Pathogens Institute}
     \end{tabular}
}
%    \end{macrocode}
% \end{macro}

% \begin{macro}
%   {\UFMreturnaddress}
%   This would also have to be modified (in the obvious way) for use by
%   a differerent department.

%   The text here will
%   stick out the bottom of the heading, but does not
%   change \TeX{}'s notion of the size of the box containing the head.
%   Thus there is no explicit provision to
%   ensure that this material doesn't overlap the actual letter.
%   \begin{macrocode}
\newcommand{\UFMreturnaddress}{
  \setlength{\tabcolsep}{0pt}
  {
      \def\arraystretch{.85}%
      \DEPTADDRFNT\blue
      \begin{tabular}[t]{l}
P.O. Box 100009\\
2055 Mowry Road\\
Gainesville, FL 32610\\
phone: 352 273 7526\\
fax: 352-273-6890\\
        http:/\kern-2.5pt/\kern-.8ptwww.epi.ufl.edu/\\
        \mbox{}\\
        \the\UFMpersonaladdress
      \end{tabular}%
    }
}
%    \end{macrocode}
% \end{macro}


% \begin{macro}
%   {UFMpersonaladdress}
%   Modifications to the presentation of personal information would be
%   made here.   Note that the actual information is specified in the
%   file with the letter.    Any of these items can be omitted simply
%   by not defining them there, so a modification would only be needed
%   if it is desired to present this information elsewhere in the
%   letter or differently here.
%   \begin{macrocode}
\newtoks\UFMpersonaladdress
\UFMpersonaladdress={
%      \ifx\fromname\empty\else\\\black\fromname\fi
      \ifx\UFM@title\empty\else\black\UFM@title\\\fi
      \ifx\fromlocation\empty\else\black\fromlocation\\\fi
      \ifx\fromaddress\empty\else\black\fromaddress\\\fi
      \ifx\UFM@email\empty\else\black\UFM@email\\\fi
      \ifx\UFM@url\empty\else\black\UFM@url\\\fi
      \ifx\telephonenum\empty\else \black\telephonenum\\\fi
}
%    \end{macrocode}
% \end{macro}

%
%\subsection{Printing the first page}
%
% \begin{macro}{\opening}
% The command |\opening{|\meta{greeting}|}| specifies the printing of
% the letterhead and footer, the date, the inside address, and the
% .   If you don't like the way those are done the changes
% would need to be made here; otherwise there should be no need to
% change this except to correct errors.
%    \begin{macrocode}
 \renewcommand\opening[1]{%
%    \end{macrocode}
%  \end{macro}

%  \begin{macro}{\HEAD}
%  The letterhead, including the department
% address, is created here and saved in the box |\HEAD| to be used
% later.   It is defined here, inside |\opening| is running, so
% that personal information from the letter file can be incorporated.
% The footer will be defined later, outside of the macro |\opening|,
% since nothing in it depends on the personal information in the
% letter file.
%    \begin{macrocode}
 \newsavebox{\HEAD}
 \begin{lrbox}{\HEAD}%
   \begin{minipage}[t]{\textwidth}%
     \hspace*{\logoindent}
     \ifcolor
     \includegraphics[width=2.5in]{UF_signature}
     \else
     \includegraphics[width=2.5in]{UF_signature} 
     \fi
     \\[0.5cm]
     \UFMunitnames
     \hskip\fill
     \UFMreturnaddress
 \end{minipage}%
 \end{lrbox}
 %    \end{macrocode}
 % \end{macro}
 % \begin{macro}{\ps@firstpage}
 % The printing of the header and footer is done by the new pagestyle
 % |firstpage| invoked here.   This technique is taken from the
 % standard letterclass.
 %    \begin{macrocode}
   \thispagestyle{firstpage}

 % Now we print the date, inside address, and greeting.
 % \begin{macrocode}
   \vspace*{.40in plus .00001fil}
       \vspace{5mm}
       \@date    %% end of personal information
       \par
       \vspace*{.1in plus .00001fil}
       \toname\\
       \toaddress

       \vspace{2\parskip}
       #1\par \nobreak
    }                       %% end of \opening.
 %    \end{macrocode}
 %  \end{macro}
 %



 % \subsection{The footer, some parameters, and the logo}
 % The package \emph{graphix} is needed to load the UF Logo as an eps
 % file.
 % \begin{macrocode}
 \RequirePackage{graphicx}
 \ifcolor\RequirePackage{color}\fi
 \usepackage{url}
 %    \end{macrocode}

 % \begin{macro}{logoindent}
 % The page parameters are set here.
 %   They are all standard \LaTeX2e\ lengths except for |\logoindent|,
 %   which is the distance the logo sticks out to the left.
 %     \begin{macrocode}
 \newlength{\logoindent}
 \setlength{\logoindent}{-.85in}

 \setlength{\topmargin}{0pt}
 \setlength\headheight{0pt}
 \setlength\headsep{0pt}
 \setlength{\textheight}{620pt}
 \setlength\oddsidemargin{.25in}
 \setlength\textwidth{6.65in}
 \setlength\evensidemargin{\oddsidemargin}
%    \end{macrocode}
%  \end{macro}
%

 %
 % \begin{macro}{\PRIMARYUNITFNT}
 % \begin{macro}{\DEPTNAMEFNT}
 % \begin{macro}{\DEPTADDRFNT}
 % \begin{macro}{\FOUNDATIONFNT}
 % \begin{macro}{\OPPORTUNITYFNT}
 % The fonts used in the header and footer are defined here.  They will
 % not be affected by any font changes made by the user.
 % These fonts, type sizes, and styles  are taken from the university
 % specification for printed
 % letterhead paper.
 % \begin{macrocode}
 \DeclareFixedFont{\PRIMARYUNITFNT}{OT1}{ppl}{b}{n}{10}
 \DeclareFixedFont{\DEPTNAMEFNT}{OT1}{ppl}{m}{n}{10}
 \DeclareFixedFont{\DEPTADDRFNT}{OT1}{ppl}{m}{n}{10}
 \DeclareFixedFont{\FOUNDATIONFNT}{OT1}{ppl}{m}{it}{12}
 \DeclareFixedFont{\OPPORTUNITYFNT}{OT1}{ppl}{m}{n}{7}%
 %    \end{macrocode}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 % \end{macro}
 %
 % \begin{macro}{\blue}
 %   \begin{macro}{\black}
 % These are ignored for printing in black and white.
 %   \begin{macrocode}
 \ifcolor
   \definecolor{UFblue}{rgb}{0,33,165}
   \newcommand\blue{\color{UFblue}}
   \newcommand\black{\color{black}}
 \else
   \let\blue\relax
   \let\black\relax
 \fi
%    \end{macrocode}
% \end{macro}
% \end{macro}

% \begin{macro}{\FOOT}
%   Here we construct a box containing the footer.
%  This cannot be changed by anything in the letter file (except
%  options in the |\documentclass| command).
%    \begin{macrocode}
\newsavebox{\FOOT}
\begin{lrbox}{\FOOT}
  \begin{minipage}[t]{\textwidth}
    \blue
    \ifnofoundation
       \vspace*{14pt}
    \else
      \FOUNDATIONFNT
      The Foundation for The Gator Nation
    \fi

    \OPPORTUNITYFNT
    An Equal Opportunity Institution
  \end{minipage}
\end{lrbox}
%    \end{macrocode}
% \end{macro}

% \begin{macro}{\ps@firstpage}
%   The first, letterhead, page of the letter is printed by use of the
% special page style |firstpage|.   It simply adjusts some dimensions
% and then sets the head and foot to be the boxes previously created.
%    \begin{macrocode}
\renewcommand{\ps@firstpage}{%
  \setlength{\topmargin}{-.375in}%       % 1 inch - .375 = 6.25 inch
%  \enlargethispage{.5in}%
  \setlength{\headheight}{1.875in}%
  \setlength{\headheight}{\ht\HEAD}
  \setlength\footskip{.75in}%
  \setlength{\headsep}{0in}%
  \setlength{\textheight}{7.5in}%
  \renewcommand{\@oddhead}{\usebox{\HEAD}}%
  \renewcommand{\@oddfoot}{\usebox{\FOOT}}%
  \renewcommand{\@evenhead}{}%
  \renewcommand{\@evenfoot}{}%
}                             %% end of \ps@firstpage
%    \end{macrocode}
% \end{macro}
%
% \begin{macro}{\closing}
%   This would be it, except that the later style file puts the
%   closing and signature in the middle of the page.   This puts it
%   flush left, but otherwise is the same.
%   \begin{macrocode}
\renewcommand{\closing}[1]{\par\nobreak\vspace{\parskip}%
  \stopbreaks
  \noindent
  \parbox{\indentedwidth}{\raggedright
       \ignorespaces #1\\[6\medskipamount]%
       \ifx\@empty\fromsig
           \fromname
       \else \fromsig \fi\strut}%
   \par}
%    \end{macrocode}
%
% \end{macro}

\endinput
