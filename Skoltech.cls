%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This is file Skoltech.cls'  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Made by: Evgeny Shilov
%% Email: evgeny.shilov@skoltech.ru
%%
%% This class has been tested with:
%%     MiKTeX version 2.9
%%
%% It is based on the standard LaTeX2e "article" class and some
%% standard packages:
%%    times    - for the font Times New Roman, 11pt
%%    mathptmx - for the font Times New Romen with math support
%%    fancyhdr - for defining headnote and footnote
%%    graphicx - for including logo
%%    natbib   - for referencing
%%    and some more...
%%
%% All packages should be availble in any normal distribution of LaTeX,
%% or can be downloaded from the CTAN homepage:
%%    www.ctan.org
%%
%% Changelog v1.0 -> v1.1
%% - Bibliography font to 11pt
%% - Reduce white space between lines (50 -> 55 lines per page)
%%
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Skoltech}[2018/02/05 v0.1 Skoltech Abstract Class]
%%
%% Pass all options directly to 'article'
%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
%%
%% prefered fontsize, papersize, and type
%%
\LoadClass[oneside,11pt,a4paper]{article}
%%
%% prefered fonts: Times New Roman becomes the standard font (text)
%%
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{mathptmx}
\linespread{0.925}
%%
%% Page size formats / 1in ~ 72pt, 1pt ~ 03515mm
%%
\setlength{\hoffset}{-1.0in}
\setlength{\oddsidemargin}{1.0in}
\setlength{\voffset}{-1.0in}
\setlength{\topmargin}{0.16in}
\setlength{\headheight}{0.74in}
\setlength{\headsep}{0.1in}
\setlength{\textheight}{9.7in}
\setlength{\paperheight}{11.7in}
\setlength{\textwidth}{6.27in}
\setlength{\paperwidth}{8.27in}
\setlength{\footskip}{0.51in}
\addtolength{\footskip}{-1.0\baselineskip}
%%
%% some others
%%
\setcounter{secnumdepth}{0} % no numbering of sections
\setlength{\parindent}{0pt} % no indent for new paragraphs
\setlength{\parskip}{\baselineskip} % skip one line between paragraphs
\setlength{\partopsep}{0pt} % skip between environments and paragraphs
\setlength{\topsep}{0pt} % skip between environments and paragraphs
\pagenumbering{arabic}
%%
%% hyperlinks and colors
%%
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\definecolor{linkcolor}{HTML}{2B6D1A} % color of links
\definecolor{urlcolor}{HTML}{3498DB} % color of hyperlinks
\hypersetup{
linkcolor=linkcolor,
urlcolor=urlcolor,
citecolor=urlcolor,
colorlinks=true
}
%\RequirePackage{enumitem} % bullets
%%
%% nomenclature
%%
\RequirePackage{nomencl}
\makenomenclature
\renewcommand{\nomname}{\vspace{-0.5cm} \section{Nomenclature}} %{\vspace{-1cm}}
%%
%% bibliography
%%
\RequirePackage{natbib} % special citing commands
\setlength{\bibsep}{0pt} % no lines between bibitems
\setlength{\bibhang}{1em} % indentation of second line in bibitem
\bibliographystyle{firstbreak} % stylefile
\renewcommand{\bibsection}{\section{References}}
%%
%% advance tables
%%
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{tabu}
\RequirePackage{array}
\RequirePackage{multirow}
%%
%% math and physics
%%
\RequirePackage{amsmath}
\RequirePackage{siunitx}
\RequirePackage[version=3]{mhchem} % chemistry formulas
%%
%% graphs
%%
\RequirePackage{tikz} 
\RequirePackage{pgfplots}
\RequirePackage{pgfplotstable}
\RequirePackage{filecontents}
\RequirePackage{graphicx} % load figures
\RequirePackage{textcomp} % ˚C
%%
%% set header and footer
%%
\RequirePackage{fancyhdr}
\pagestyle{fancy} % load package
\fancyhf{} % clear any existing styles
\fancyhead[L]{\includegraphics[height=0.62in]{Skoltech-logo.png}} % input logo top right, even and odd side, in margin
%\fancyhead[R]{\includegraphics[height=0.31in]{eage.eps}\vspace{9pt}} % input logo top right, even and odd side, in margin
\fancyfoot[C]{{\fontsize{10}{8}\selectfont{%
\definecolor{SkoltechColor}{HTML}{97A91B}
GEN-{\color{SkoltechColor}Y} 2.0 -- Skoltech Young Scientists Cross-Disciplinary Conference\\\vspace{-1pt}
13--17 March 2019, Sochi, Russia}}} % footnote
%\fancyfoot[L]{Page \thepage}
\renewcommand{\headrulewidth}{0pt} % no line in header
\renewcommand{\footrulewidth}{0.5pt} % add line in footnote
\pagenumbering{arabic} % define page numbering
%%
%% section headers and paragraphs
%%
\renewcommand{\section}{\@startsection{section}%
{1}% level
{0pt}% indent
{.1ex plus -.1ex}% beforeskip
{.1ex plus -.1ex}% afterskip
{\fontsize{11}{11}\selectfont\bf}} % font
%
\renewcommand{\subsection}{\@startsection{subsection}%
{2}% level
{0pt}% indent
{.1ex plus -.1ex}% beforeskip
{.1ex plus -.1ex}% afterskip
{\fontsize{11}{11}\selectfont\emph}} % font
%%
%% caption font
%%
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bf\itshape #1} \itshape #2}%
  \ifdim \wd\@tempboxa >\hsize
    {{\bf\itshape #1} \itshape #2\par}
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
% EOF
