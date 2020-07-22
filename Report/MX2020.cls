\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{MX2020}[2019/06/06 Standard LaTeX document class]

\LoadClass[twocolumn,a4paper]{article}
	%\setlength{\oddsidemargin}{15mm}
	%\setlength{\evensidemargin}{15mm}
%	\addtolength{\textwidth}{1.75in}

%	\setlength{\topmargin}{35mm}
	%\addtolength{\textheight}{1.75in}
\RequirePackage[top=3.5cm, bottom=2.5cm, left=1.5cm, right=1.5cm]{geometry}
\setlength\overfullrule{0pt}



\def \afil1 {$^*$}
\def \afil2 {$^{**}$}
\def \afil3 {$^{***}$}
\newcommand{\affiliation}[1]{\newcommand{\@affiliation}{#1}}

\renewcommand{\maketitle}{%
        %\fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        %\fontshape{sl}\selectfont\headlinecolor
        \begin{center}
        \large{\fontsize{17}{50} \textbf{\@title}}
        \\
        \bigskip 
        {\normalsize\textbf\@author}
        \\
        \bigskip 
        {\normalsize\textit\@affiliation}
        \newline
        \end{center}
        \medskip
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\MXabstract}[2]{ 
\twocolumn[
  \begin{@twocolumnfalse}
    \maketitle    
    \par
\begingroup
\leftskip4em
\rightskip\leftskip

    \begin{small}
    \noindent\rule{15.2cm}{0.4pt}
    \vspace{-0.2cm}
    \newline 
    \textbf{Abstract:}   {#1}
\newline
\newline
\textit{Keywords}: 	{#2} 
\newline 
\end{small}
\noindent\rule{15.2cm}{0.4pt}
\par
\endgroup
\vspace{1cm}
  \end{@twocolumnfalse}
  ]
}

\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\normalsize\center\uppercase}%
}

\renewcommand{\subsection}{%
    \@startsection
    {subsection}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\normalsize\textit}%
}

