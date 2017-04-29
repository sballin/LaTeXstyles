% Declare that this class file requires at least LaTeX version 2e.
\NeedsTeXFormat{LaTeX2e}

% Provide the name of your page, the date it was last updated, and a comment about what it's used for
\ProvidesClass{homework}[2016/09/30 Sean's custom homework style]

\LoadClass[12pt]{article}
\usepackage[margin=1in]{geometry}
\usepackage{amsmath}
\geometry{letterpaper}
\usepackage{graphicx}
\usepackage{amssymb}
\usepackage{epstopdf}

% Copy-pasteable code listings
\usepackage[T1]{fontenc}
\usepackage{textcomp}
\usepackage{listings}
\usepackage{courier}
\lstset{ 
    upquote=true,
    language=Python,
    basicstyle=\ttfamily,
    %breaklines=true,
    columns=fixed,
    literate={*}{{\char42}}1
             {-}{{\char45}}1
             {\ }{{\copyablespace}}1
}
\usepackage[space=true]{accsupp}
% requires the latest version of package accsupp
\newcommand{\copyablespace}{
    \BeginAccSupp{method=hex,unicode,ActualText=00A0}
\ %
    \EndAccSupp{}
}
    
% Useful packages
\usepackage{physics}
\usepackage{siunitix}
\usepackage{todonotes}
\usepackage{float}
\usepackage{cancel}
\usepackage{url}
\usepackage{titling}
    \pretitle{\vspace{-4em}\begin{center}\Huge\bfseries}
%\usepackage{hyperref} % in titles do \texorpdfstring{$math$}{plaintext}
\usepackage{titlesec} % text on the same line as subsection*s
    \titleformat{\subsection}[runin]{\bfseries}{}{}{}[]
    
% Cosmetics and commands
\usepackage[parfill]{parskip}
\setlength{\footskip}{1.2cm}
% Powers of ten
\providecommand{\e}[1]{\ensuremath{\times10^{#1}}}
% Partial derivatives
\newcommand{\doh}[2][]{\frac{\partial#1}{\partial#2}}
% Translate *s in math to \cdots
\mathcode`\*="8000
{\catcode`\*\active\gdef*{\cdot}}
% Bold vectors
\usepackage{bm}
\newcommand{\vect}[1]{\boldsymbol{\mathbf{#1}}}

% End of class file 
\endinput
