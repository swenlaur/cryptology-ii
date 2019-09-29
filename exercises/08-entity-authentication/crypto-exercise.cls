\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{crypto-exercise}[1994/06/01 Standard LaTeX class] 

\LoadClass{article}
\RequirePackage{color}

\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{accents}

\RequirePackage[utf8]{inputenc} 
\RequirePackage{graphicx}
\RequirePackage{algorithmic}

\RequirePackage[draft]{crygame}
\RequirePackage{crysymb}
\RequirePackage{crypto-ii}
\RequirePackage{exercise-layout}

\RequirePackage[margin = 2.5cm]{geometry}
%\parindent 0pt    



% Classical way to define commands with optional arguments
% for the command \editor[#1]{#2} 
\def\author{\futurelet\testchar\MaybeOptArgAuthor} 
\def\MaybeOptArgAuthor{\ifx[\testchar \let\next\OptArgAuthor
\else \let\next\NoOptArgAuthor  \fi \next} 
\def\OptArgAuthor[#1]#2{}%\par \centerline{[#1]{#2}}}
\def\NoOptArgAuthor#1{}%\par \centerline{{#1}}} 


% for the command \editor[#1]{#2} 
\def\editor{\futurelet\testchar\MaybeOptArgEditor} 
\def\MaybeOptArgEditor{\ifx[\testchar \let\next\OptArgEditor
\else \let\next\NoOptArgEditor  \fi \next} 
\def\OptArgEditor[#1]#2{}%\par \centerline{[#1]{#2}}}
\def\NoOptArgEditor#1{}%\par \centerline{{#1}}} 

% for the command \contributor[#1]{#2} 
\def\contributor{\futurelet\testchar\MaybeOptArgContributor} 
\def\MaybeOptArgContributor{\ifx[\testchar \let\next\OptArgContributor
\else \let\next\NoOptArgContributor  \fi \next} 
\def\OptArgContributor[#1]#2{}%\par \centerline{[#1]{#2}}}
\def\NoOptArgContributor#1{}%\par \centerline{{#1}}} 


% Classical way to define commands with optional arguments
% for the command \illustration[#1]{#2} 
\def\illustration{\futurelet\testchar\MaybeOptArgIllustration} 
\def\MaybeOptArgIllustration{\ifx[\testchar \let\next\OptArgIllustration 
\else \let\next\NoOptArgIllustration \fi \next} 
\def\OptArgIllustration[#1]#2{\par \centerline{\includegraphics[#1]{#2}}}
\def\NoOptArgIllustration#1{\par \centerline{\includegraphics{#1}}} 


\newcommand{\comments}[1]{}

\newcommand{\exerciseheader}{\noindent MTAT.07.003 Cryptology II\\ 
Spring 2012 / Exercise session ?? / Example Solution\vspace*{3ex}\\} 
\newcommand{\tags}[1]{}


