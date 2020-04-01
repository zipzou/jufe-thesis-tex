%%
%% This is file `jufethesis.cls',
%%
%%
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%%
%%    http://www.latex-project.org/lppl.txt
%%
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%%
\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{jufethesis} [2019/02/27 v0.1 Thesis Template for Graduarte]

\DeclareOption{authoryear}{\def\jufebibstyle{A}}
\DeclareOption{numberorder}{\def\jufebibstyle{N}}


\newif\ifpaperside\papersidetrue
\DeclareOption{twoside}{\papersidefalse}
\DeclareOption{oneside}{\papersidetrue}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\ifpaperside
    \LoadClass[a4paper,12pt,oneside,titlepage]{article}
    \def\paperside{N}
\else
    \LoadClass[a4paper,12pt,twoside,titlepage,openany]{article}
    \def\paperside{T}
\fi

\RequirePackage[left=4cm, right=3cm, top=3.77594cm, bottom=3.47594cm, head=2.77594cm,headsep=36pt,foot=1.47594cm]{geometry}
% \RequirePackage{fancybox}
% \fancyput{}
\setlength{\oddsidemargin}{1.5cm}         % 左边（书内侧）装订预留空白距离
\setlength{\evensidemargin}{0mm}       % 置0

% \RequirePackage[utf8]{inputenc}

\RequirePackage{ifthen}
\RequirePackage{calc}
\RequirePackage{xpatch}

\RequirePackage[tbtags]{amsmath}
\numberwithin{equation}{section}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}
\RequirePackage{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=true,
  linkcolor={black},
  urlcolor={black},
  filecolor={black},
  citecolor={black},
  linktoc=all,
}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}
\XeTeXlinebreaklocale "zh" 
\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

% \RequirePackage{txfonts}
% \RequirePackage{bm}

\RequirePackage[slantfont,boldfont]{xeCJK}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{SimHei}
\punctstyle{quanjiao}

\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
% \chead{江西财经大学本科毕业设计}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
\RequirePackage{titletoc}

\titlecontents{section}
              [0pt]
              {\vspace{0pt}\bf \sihao}%
              {\contentslabel{12pt}}%
              {}%
              {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{0pt}}%
\titlecontents{subsection}
  [22pt]
  {\vspace{0pt}\xiaosi}%
  {\contentslabel{20pt}}%
  {}%
  {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{0pt}}%
\titlecontents{subsubsection}
  [42pt]
  {\vspace{0pt}\xiaosi}%
  {\contentslabel{28pt}}%
  {}%
  {\titlerule*[0.5pc]{$\cdot$}\contentspage\hspace*{0pt}}%

% \RequirePackage[toc]{multitoc}
\RequirePackage{url}
% \RequirePackage{times}
\urlstyle{tt}

\RequirePackage{lscape}
\RequirePackage{graphicx}

\RequirePackage{longtable}
\RequirePackage{booktabs}


\RequirePackage{caption}
\captionsetup{font=small,labelsep=space}
\RequirePackage{subcaption}
% \renewcommand{\thefigure}{}

\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{array}
\renewcommand\arraystretch{1.528}

\definecolor{winered}{rgb}{0.5,0,0}
% 源码
\usepackage[utf8]{inputenc}
\RequirePackage{listings}
\definecolor{lightgrey}{rgb}{0.9,0.9,0.9}
\definecolor{frenchplum}{RGB}{190,20,83}
\lstset{language=[LaTeX]TeX,
	texcsstyle=*\bf\color{winered}\ttfamily,
	basicstyle=\xiaosi\ttfamily,
	numbers=none,
	breaklines=true,
	keywordstyle=\bf\color{winered}\ttfamily,
	commentstyle=\color{gray},
	emph={elegantpaper,fontenc,fontspec,xeCJK,FiraMono,xunicode,newtxmath,figure,fig,image,img,table,itemize,enumerate,newtxtext,newtxtt,ctex,microtype,description,times,newtx,booktabs,tabular,PDFLaTeX,XeLaTeX,type1cm,BibTeX},
	emphstyle={\color{frenchplum}},
	morekeywords={DeclareSymbolFont,SetSymbolFont,toprule,midrule,bottomrule,institute,version,includegraphics,setmainfont,setsansfont,setmonofont ,setCJKmainfont,setCJKsansfont,setCJKmonofont,RequirePackage,figref,tabref,email,maketitle,keywords},
	frame=none,
	tabsize=2,
	backgroundcolor=\color{lightgrey}
}
\lstdefinelanguage{JavaScript}{
  keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break, let, const},
  keywordstyle=\color{blue}\bfseries,
  ndkeywords={class, export, boolean, throw, implements, import, this, require},
  ndkeywordstyle=\color{darkgray}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}
% \lstset{
%    language=JavaScript,
%    backgroundcolor=\color{white},
%    extendedchars=true,
%    basicstyle=\footnotesize\ttfamily,
%    showstringspaces=false,
%    showspaces=false,
%    numbers=left,
%    numberstyle=\footnotesize,
%    numbersep=9pt,
%    tabsize=2,
%    breaklines=true,
%    showtabs=false,
%    captionpos=b
% }


% \RequirePackage{shortlabels}
\RequirePackage{enumerate}
\RequirePackage[shortlabels]{enumitem}
\setenumerate{fullwidth,topsep=0pt,itemindent=24pt,listparindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex,labelsep=4pt}
\setitemize{fullwidth,topsep=0pt,itemindent=24pt,listparindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex,labelsep=4pt}
\setdescription{fullwidth,topsep=0pt,itemindent=24pt,listparindent=\parindent,itemsep=0ex,partopsep=0pt,parsep=0ex,labelsep=4pt}

\RequirePackage[numbers,sort&compress]{natbib}

\setlength{\headheight}{3cm}
\setlength{\headsep}{0.5cm}
% \setlength{\footskip}{-2cm}
% \setlength{\footheight}{2cm}
% \raggedbottom

% 首行缩进
\RequirePackage{indentfirst}
\setlength{\parindent}{24pt}

% 段落间距
\setlength{\itemsep}{0em}
\setlength{\parsep}{0em}
\setlength{\parskip}{0em}

\RequirePackage{setspace}

\DeclareRobustCommand{\jufeauthorname}{}
\DeclareRobustCommand{\jufeauthorid}{}
\DeclareRobustCommand{\jufeauthorinstitude}{}
\DeclareRobustCommand{\jufeauthormajor}{}
\DeclareRobustCommand{\jufeauthorgraduate}{}
\DeclareRobustCommand{\jufeauthor}[5]{
  \renewcommand{\jufeauthorname}{#1}        % 姓名
  \renewcommand{\jufeauthorid}{#2}           % 学号
  \renewcommand{\jufeauthorinstitude}{#3}    % 学院
  \renewcommand{\jufeauthormajor}{#4}        % 专业
  \renewcommand{\jufeauthorgraduate}{#5}     % 毕业年份
}
\DeclareRobustCommand{\papertitle}[1]{
  \renewcommand{\papertitle}{#1}            % 论文标题
}
\DeclareRobustCommand{\paperdate}[1]{
  \renewcommand{\paperdate}{#1}            % 论文日期
}

\DeclareRobustCommand{\paperteachername}{}
\DeclareRobustCommand{\paperteacherposition}{}
\DeclareRobustCommand{\paperteacher}[2]{
  \renewcommand{\paperteachername}{#1}      % 指导教师名称
  \renewcommand{\paperteacherposition}{#2}  % 指导教师职称
}

% \newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
% \newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
% \newcommand{\yihao}{\fontsize{28pt}{\baselineskip}\selectfont}
% \newcommand{\erhao}{\fontsize{21pt}{\baselineskip}\selectfont}
% \newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
% \newcommand{\xiaosan}{\fontsize{15pt}{0.74\baselineskip}\selectfont}
% \newcommand{\sanhao}{\fontsize{15.75pt}{\baselineskip}\selectfont}
% \newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
% \newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
% \newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
% \newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
% \newcommand{\liuhao}{\fontsize{7.875pt}{\baselineskip}\selectfont}
% \newcommand{\qihao}{\fontsize{5.25pt}{\baselineskip}\selectfont}
% \newcommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}

\newfontfamily{\timesnewroman}{Times New Roman}
\newfontfamily{\arial}{Arial}
\newfontfamily{\couriernew}{Courier New}
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{50.4pt}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{43.2pt}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{31.2pt}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{28.8pt}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{26.4pt}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{21.6pt}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{19.2pt}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}
\DeclareRobustCommand{\shisanbang}{\fontsize{13pt}{15.pt}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{9pt}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{7.8pt}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{6.6pt}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{6pt}\selectfont}


\setCJKfamilyfont{heiti}{SimHei}
\setCJKfamilyfont{kaiti}{KaiTi}
\setCJKfamilyfont{abstractenfont}{Arial}

\newcommand{\papercover}{
  \thispagestyle{empty}
  \begin{titlepage}
    \centering
    \begin{figure}[!htp]
      \centering
      \vspace{1cm}  %调整图片与上文的垂直距离
      \includegraphics[]{logo.png}
    \end{figure}

    \vspace{1cm}
    \textnormal{\fontsize{26pt}{22pt}\selectfont{\heiti{普\\通\\本\\科\\毕\\业\\设\\计\\}}}

    \vspace{1cm}
    \textbf{\sanhao{题目：\papertitle}}
    \vspace{0.6cm}

    \newlength{\titlelength}
    \newlength{\titlelengthhalf}
    \setlength{\titlelength}{27em}
    \setlength{\titlelengthhalf}{10em}

    \vspace{0mm}
    \xiaosan{学~~~~~~~院 \;\underline{\makebox[\titlelength]{\jufeauthorinstitude}}}

    \vspace{2.5mm}
    \xiaosan{学生姓名 \; \underline{\makebox[\titlelengthhalf]{\jufeauthorname}}
    学~~~~~~~~号 \; \underline{\makebox[\titlelengthhalf]{\jufeauthorid}}}

    \vspace{2.5mm}
    \xiaosan{专~~~~~~~~业 \; \underline{\makebox[\titlelengthhalf]{\jufeauthormajor}}
    届~~~~~~~~别 \; \underline{\makebox[\titlelengthhalf]{\jufeauthorgraduate~~届}}}
    
    \vspace{2.5mm}
    \xiaosan{指导教师 \; \underline{\makebox[\titlelengthhalf]{\paperteachername}}
    职~~~~~~~~称 \; \underline{\makebox[\titlelengthhalf]{\paperteacherposition}}}

    \vspace{2.5mm}
    \xiaosan{\paperdate}

    \newpage
    \thispagestyle{empty}
    \begin{table}[htbp]
      \begin{tabular}{|l|l|l|l|l|p{1cm}|}
      \multicolumn{6}{c}{\sanhao{\textbf{普通本科生毕业论文（设计）诚信承诺书}}} \\ \hline
      \multicolumn{2}{|c|}{毕业论文（设计）题目} & \multicolumn{4}{c|}{\papertitle} \\ \hline
      \multicolumn{1}{|c|}{学生姓名} & \multicolumn{1}{c|}{\jufeauthorname} & \multicolumn{1}{l|}{专业} & \multicolumn{1}{c|}{\jufeauthormajor} & \multicolumn{1}{c|}{学号} & \multicolumn{1}{c|}{\jufeauthorid} \\ \hline
      \multicolumn{1}{|c|}{指导老师} & \multicolumn{2}{c|}{\paperteachername} & \multicolumn{1}{c|}{职称} & \multicolumn{2}{c|}{\paperteacherposition} \\ \hline
      \multicolumn{1}{|c|}{所在学院} & \multicolumn{5}{c|}{\jufeauthorinstitude} \\ \hline 
      \multicolumn{6}{|c|}{}\\ \multicolumn{6}{|c|}{}\\
      \multicolumn{6}{|c|}{\sanhao{\textbf{诚信承诺}}} \\
      \multicolumn{6}{|c|}{}\\ \multicolumn{6}{|c|}{} \\
      \multicolumn{6}{|l|}{\begin{tabular}[c]{@{}l@{}}
        \\ \\
        \xiaosi{本人慎重承诺和声明：}\\
        \xiaosi{　　我承诺在毕业论文（设计）活动中遵守学校有关规定，恪守学术规范，}\\
        \xiaosi{在本人的毕业论文中未剽窃、抄袭他人的学术观点、思想和成果，未篡改研} \\
        \xiaosi{究数据，如有违规行为发生，我愿承担一切责任，接受学校的处理。}    \\ \\ \\  \\ \\ \\ \\ \\ \\
      \end{tabular}} \\
      \multicolumn{6}{|r|}{\begin{tabular}[c]{@{}r@{}}\xiaosi{学生签名：　　　　 　　}
      \\ \xiaosi{ \jufeauthorgraduate 年 　　 月 　　 日　　}\\ \end{tabular}} \\ \hline
      \end{tabular} 
      \end{table}
    

  \end{titlepage}
}

\newcommand{\heiti}{\CJKfamily{heiti}}

% \fancypagestyle{frontmatter}{
%   \fancyhf{}
%   \fancyhead[C]{\xiaowuhao 江西财经大学本科毕业设计}
%   % \fancyhead[R]{\xiaowuhao\songti \rightmark}
%   % \fancyfoot[C]{\xiaowuhao \thepage}
% }
\fancypagestyle{mainmatter}{
  \renewcommand{\thepage}{\arabic{page}}
  \fancyhf{}
  \fancyhead[C]{\wuhao 江西财经大学本科毕业设计}
  % \fancyhead[R]{\xiaowuhao \thechapter \hspace{1em} \rightmark}
  \cfoot{\xiaowu\thepage}
  \fancyfoot[C]{\xiaowu \thepage}
}

% 摘要格式
\newcommand{\abstractch}[2]{
  % \renewcommand{\abstractchtext}{#1}
  
  {
    \thispagestyle{plain}
    \renewcommand{\thepage}{\xiaowu\Roman{page}}
    \centerline{\xiaosan{\heiti{摘~~~~~~~~要}}}

    \xiaosi{\CJKfamily{kaiti}{#1}}

    {
      \setlength{\parindent}{0em}
      \xiaosi{\heiti{关键词}}
      \xiaosi{\CJKfamily{kaiti}{#2}}
    }
    \newpage
  }
}

\newcommand{\abstracten}[2]{
  % \renewcommand{\abstractchtext}{#1}
  {
    \thispagestyle{plain}
    \renewcommand{\thepage}{\xiaowu\Roman{page}}
    \centerline{\xiaosan{\textbf{\arial{Abstract}}}}

    \xiaosi{#1}

    {
      \setlength{\parindent}{0em}
      \xiaosi{\textbf{\CJKfamily{heiti}{【}}}
      \xiaosi{\textbf{\arial{Key Words}}}
      \xiaosi{\textbf{\CJKfamily{heiti}{】}}}
      \xiaosi{#2}
    }
    \newpage
  }
}

\renewcommand\figurename{\wuhao{图}} %
\renewcommand\tablename{\xiaosi{表}}%
\newtheorem{theorem}{定理}[section] %
\newtheorem{lemma}[theorem]{引理} %
\newtheorem{proposition}[theorem]{性质} %
\newtheorem*{corollary}{推论} %
\theoremstyle{definition} %
\newtheorem{definition}{定义}[section] %
\newtheorem{conjecture}{猜想}[section] %
\newtheorem{example}{例}[section] %
\theoremstyle{remark} %
\newtheorem*{remark}{\normalfont\bfseries评论} %
\newtheorem*{note}{\normalfont\bfseries注} %
\newtheorem{case}{\normalfont\bfseries案例} %
\renewcommand*{\proofname}{\normalfont\bfseries证明} %
\renewcommand{\thefigure}{\wuhao{\thesection-\arabic{figure}}}
\renewcommand{\thetable}{\xiaosi{\thesection.\arabic{table}}}
\let\oldeqref\eqref
\renewcommand{\eqref}[1]{
  公式\;\oldeqref{eq_1}
}

\titleformat{\chapter}{\xiaosan\bfseries}{\thechapter}{8pt}{
  \setlength{\baselineskip}{22pt}
}{

}

\renewcommand{\contentsname}{
  \vspace{-28pt}\textnormal{\centerline{\heiti{目~~~~录}}}
}
\let\oldtableofcontents\tableofcontents%remember the definition
\renewcommand\tableofcontents{
  \thispagestyle{plain}
  \renewcommand{\thepage}{\xiaowu\Roman{page}}
  \oldtableofcontents%use the standard toc
  \clearpage
}

\newcommand{\makecontent}[2] {
  \renewcommand{\thepage}{\xiaowu\Roman{page}}
  \setcounter{secnumdepth}{#1}
  \setcounter{tocdepth}{4}
  \tableofcontents
  \newpage
}

\renewcommand{\baselinestretch}{1.528}

\titlespacing{\section}{0pt}{0pt}{6pt}
\titlespacing{\subsection}{0pt}{0pt}{6pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}

\titleformat{\section}[block]{\raggedright\xiaosan\bfseries}{\thesection}{6pt}{}
\titleformat{\subsection}[block]{\raggedright\large\bfseries}{\thesubsection}{6pt}{}
\titleformat{\subsubsection}[block]{\raggedright\normalsize\bfseries}{\thesubsubsection}{6pt}{}

\let\oldrefname\refname
\renewcommand{\refname}{
  \clearpage\centerline{\xiaosan{参考文献}}\vspace{-15pt}
}

\renewcommand{\bibhang}{-2em}
\setlength{\bibindent}{-2em}

\makeatletter
\renewcommand\NAT@bibsetnum[1]{\settowidth\labelwidth{\@biblabel{#1}}%
   \setlength{\leftmargin}{\bibindent}\addtolength{\leftmargin}{\dimexpr\labelwidth+\labelsep\relax}%
   \setlength{\itemindent}{-\bibindent}%
   \setlength{\listparindent}{\itemindent}
\setlength{\itemsep}{\bibsep}\setlength{\parsep}{\z@}%
   \ifNAT@openbib
     \addtolength{\leftmargin}{\bibindent}%
     \setlength{\itemindent}{-\bibindent}%
     \setlength{\listparindent}{\itemindent}%
     \setlength{\parsep}{0pt}%
   \fi
}
\makeatother

\newcommand{\upcite}[1]{\textsuperscript{\textsuperscript{\cite{#1}}}}

\bibliographystyle{gbt-7714-2015-author-year}

\setlength{\itemsep}{0pt}
\renewcommand{\bibsep}{0pt}
\let\oldbibliography\bibliography
\renewcommand{\bibliography}[1]{
  \begin{spacing}{1.337}
    \wuhao
    \oldbibliography{#1}
  \end{spacing}
}

\makeatletter

\makeatother

\renewcommand{\footnotetext}[1]{
  \footnotetext{\centering{#1}}
}

\setcounter{secnumdepth}{4}
\newcounter{usecase}
\setcounter{usecase}{1}
\newcounter{subusecase}
\newcounter{subsubsubsection}
\makeatletter
\@addtoreset{subsubsubsection}{section}
\@addtoreset{subsubsubsection}{subsection}
\@addtoreset{subsubsubsection}{subsubsection}
\makeatother
\titleclass{\subsubsubsection}{straight}[\subsubsection]
% \newcommand{\theusecase}{\value{usecase}}
\titleformat{\subsubsubsection}[block]{\raggedright\normalsize\bfseries}{\thesubsubsubsection}{6pt}{}
\titlespacing{\subsubsubsection}{0pt}{0pt}{0pt}
\makeatletter
\def\toclevel@subsubsubsection{4}
\def\l@subsubsubsection{\@dottedtocline{4}{0pt}{28pt}}
\makeatother

\renewcommand\thesubsubsubsection{\thesubsubsection.\arabic{subsubsubsection}}

\newcommand{\declareusecase}[1]{
\stepcounter{subusecase}
#1  \theusecase-\thesubusecase
}

\makeatletter
\@addtoreset{subusecase}{subsubsection}
\makeatother

\newcommand{\tableenum}{
  \vspace{-9pt}
  \setenumerate{fullwidth,topsep=0pt,itemindent=0pt,listparindent=0pt,itemsep=0ex,partopsep=0pt,parsep=0ex,labelsep=4pt}
  \setitemize{fullwidth,topsep=0pt,itemindent=0pt,listparindent=0pt,itemsep=0ex,partopsep=0pt,parsep=0ex,labelsep=4pt}
}

\newcommand{\tabref}[1]{
  表~\xiaosi{\ref{#1}}
}
\newcommand\figref[1]{
  \xiaosi{图~\ref{#1}}
  }

\newcommand{\tabspace}{
  \setlength{\abovecaptionskip}{2pt}%    
  \setlength{\belowcaptionskip}{-10pt}%
}
\newcommand{\figspace}{
  \setlength{\abovecaptionskip}{12pt}%    
  \setlength{\belowcaptionskip}{-12pt}%
}

\RequirePackage{zhnumber}
\RequirePackage{CJKnumb}
\newcommand{\secrefch}[1]{
  第\ref{#1}章
}
\newcommand{\secsecrefch}{
  
}

\newcommand{\Thanksto}{
  \clearpage
  \section*{\centerline{致~~~~谢}}
}

\RequirePackage{appendix}
\renewcommand{\appendixname}{\centerline{附录~\Roman{appendix}}}
\renewcommand{\appendixpagename}{\centerline{附录~\Roman{section}}}

\newcounter{appendix}

\renewcommand{\appendix}{
  \clearpage
  \stepcounter{appendix}
  \section*{\centerline{\appendixname}}
}

% \counterwithin{subsubsection}{usecase}

\endinput