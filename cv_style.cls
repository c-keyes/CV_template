% CV template
%
% Author: Christopher Keyes
% Updated: September 24, 2021
%
% OK to use!

\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_style}[Oct 2018 custom cv class]
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}

% lengths and orientation
\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}
\geometry{letterpaper, portrait, margin=1in}

% format of section headings
\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]
    
\titlespacing*{\section}{0pt}{1.6ex}{2.5ex}

% format subsection headings
\titleformat{\subsection}
    {\large\bfseries\raggedright}
    {}{0em}
    {}

% Command to produce contact information
%	#1 institution
%	#2 department
%	#3 building/address
%	#4 email
%	#5 website
\newcommand{\contact}[5]{
    #1\\ %institution
    #2\\ %dept
    #3\\ %building
    \vspace{1em} 
    #4 \\ %email
    #5 \\ %website
}

% Command to produce your name, nice and big
\newcommand{\name}[1]{
    {\LARGE\scshape{#1}} \vspace{1em}
}

% Command to produce a talk:
%	#1 talk title
%	#2 seminar title
%	#3 host location
%	#4 date
\newcommand{\talk}[4]{
	\textit{#1}. #2, #3, #4.
}

% Command to produce a paper:
%	#1 (optional) joint authors
% 	#2 title
%	#3 status - in preparation, submitted, accepted by..., to appear in..., etc.
%	#4 Anything else, e.g. links
\newcommand{\paper}[4][\@nil]{%
  \def\tmp{#1}%
  
   \ifx\tmp\@nnil
       \textbf{#2}. #3. #4
    \else
       \textbf{#2} (joint with #1). #3. #4
    \fi
}
    
    