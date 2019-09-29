\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{crypto-exercise}[1994/06/01 Standard LaTeX class] 

\LoadClass[11pt]{article}
\RequirePackage{color}

\RequirePackage{amssymb}
\RequirePackage{amsmath}

\RequirePackage[utf8]{inputenc} 
\RequirePackage{graphicx}
\RequirePackage{algorithmic}

\RequirePackage[draft]{crygame}
\RequirePackage{crysymb}
\RequirePackage{crypto-ii}
\RequirePackage{exercise-layout}



% Classical way to define commands with optional arguments
% for the command \editor[#1]{#2} 
\def\author{\futurelet\testchar\MaybeOptArgAuthor} 
\def\MaybeOptArgAuthor{\ifx[\testchar \let\next\OptArgAuthor
\else \let\next\NoOptArgAuthor  \fi \next} 
\def\OptArgAuthor[#1]#2{\par \centerline{[#1]{#2}}}
\def\NoOptArgAuthor#1{\par \centerline{{#1}}} 


% for the command \editor[#1]{#2} 
\def\editor{\futurelet\testchar\MaybeOptArgEditor} 
\def\MaybeOptArgEditor{\ifx[\testchar \let\next\OptArgEditor
\else \let\next\NoOptArgEditor  \fi \next} 
\def\OptArgEditor[#1]#2{\par \centerline{[#1]{#2}}}
\def\NoOptArgEditor#1{\par \centerline{{#1}}} 

% for the command \contributor[#1]{#2} 
\def\contributor{\futurelet\testchar\MaybeOptArgContributor} 
\def\MaybeOptArgContributor{\ifx[\testchar \let\next\OptArgContributor
\else \let\next\NoOptArgContributor  \fi \next} 
\def\OptArgContributor[#1]#2{\par \centerline{[#1]{#2}}}
\def\NoOptArgContributor#1{\par \centerline{{#1}}} 

\newcommand{\comments}[1]{}

 
