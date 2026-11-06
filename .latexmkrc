#!/usr/bin/env perl

# Output directory
$out_dir = 'out';

# Create output directory if it does not exist
-d $out_dir or mkdir $out_dir or die "Cannot create $out_dir: $!";

# upLaTeX
$latex = 'uplatex %O -kanji=utf8 -no-guess-input-enc -synctex=1 -interaction=nonstopmode -file-line-error %S';

# upBibTeX
$bibtex = 'upbibtex %O %B';

# dvipdfmx
$dvipdf = 'dvipdfmx %O -o %D %S';

# DVI -> PDF
$pdf_mode = 3;

# MakeIndex
$makeindex = 'upmendex %O -o %D %S';

# Maximum compilation repetitions
$max_repeat = 5;