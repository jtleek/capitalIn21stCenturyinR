[click here to go to my fork at the github repository](https://github.com/ptoche/capitalIn21stCenturyinR/)

[click here to go to the main branch of the github repository](https://github.com/jtleek/capitalIn21stCenturyinR)

===========


Software License: [GPL-3](http://www.gnu.org/licenses/gpl.html)


Replicate Figures & Tables from [Thomas Piketty, Capital in the 21st Century, Harvard University Press, 2013](http://en.wikipedia.org/wiki/Capital_in_the_Twenty-First_Century).

Based on Professor Piketty's [technical appendices](http://piketty.pse.ens.fr/en/capital21c2).

---------

free, open-source, reproducible software to reproduce all figures and tables.


This repository, named Slides, contains the following:

I) FILES:

1) 'slidesFigures.Rnw'

a knitr/beamer document

It may be run from the R console or in Rstudio by pressing the 'Compile PDF' button.


2) 'dataFiguresTables.Rnw'

a knitr code chunk

pulls the data from the Piketty spreadsheets and puts it in ready form for printing.

It may be run from the R console by omitting the first and last lines, i.e. by commenting out as follows:

# <<'data', include=FALSE, cache=FALSE>>=
Do not comment the sandwiched part
# @

Or it may be called from 'slidesFigures.Rnw' as a code chunk, in which case comment out every call to ``load()`` that appears inside each figure, as follows: 

# load("data/df_1_!.Rda") 

3) 'slidesPikettyAll.tex'



4) 'beamerthemepiketty.sty'

Contains a series of customization to obtain a standard, neutral theme. 

For instance, frame titles are in a small-ish font to accommodate the sometimes long titles in Piketty's presentations. A hack makes the euro symbol available to LaTeX and searchable in the PDF (wow!). 

5) 'slidesPikettySaoPaulo2014.tex'


6) 'slidesFiguresRename.Rnw' 

An ugly hack designed to rename the Figures in a way consistent with the Piketty book. It is called from 'slidesFigures.Rnw', at the very end. If omitted, the figures will be named 'Figure_1_1-1.png' instead of 'Figure_1_1.png'.

7) 'pgfbaseimage.sty' 

A hack designed to remove a warning when compiling the beamer class. May be safely omitted.


8) 'slidesFigures-concordance.tex', files with  '.vrb', '.nav' 

------
mailto:contact@patricktoche.com
