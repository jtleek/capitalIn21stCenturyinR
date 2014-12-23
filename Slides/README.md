---------

[click here to go to my fork at the github repository](https://github.com/ptoche/capitalIn21stCenturyinR/)  

[click here to go to the main branch of the github repository](https://github.com/jtleek/capitalIn21stCenturyinR)  

---------

Software License: [GPL-3](http://www.gnu.org/licenses/gpl.html)  

Replicate Figures & Tables from [Thomas Piketty, Capital in the 21st Century, Harvard University Press, 2013](http://en.wikipedia.org/wiki/Capital_in_the_Twenty-First_Century).  

Based on Professor Piketty's [technical appendices](http://piketty.pse.ens.fr/en/capital21c2).  

---------

This repository, named **Slides**, contains the following:


I) **FILES/SCRIPTS**:  

    1) ``'slidesFigures.Rnw'``  
    -- a knitr/beamer document.  
    -- it may be run from the R console or in Rstudio by pressing the 'Compile PDF' button.  
    -- produces beamer slides for all of the book's figures.  
    -- produces standalone ``.pdf`` and ``.png`` figures stored in ``data`` subdirectory.
  
    2) ``'dataFiguresTables.Rnw'``  
    -- a knitr code chunk.   
    -- pulls the data from the Piketty spreadsheets and puts it in ready form for printing.  
    -- it may be run from the R console by omitting the first and last lines, i.e. by commenting out as follows:  

        ```r
        # <<'data', include=FALSE, cache=FALSE>>=
        Do not comment the sandwiched part
        # @
        ```
    -- ... or it may be called from 'slidesFigures.Rnw' as a code chunk, in which case comment out every call to ``load()`` that appears inside each figure, as follows: 

        ```r
        # load("data/df_1_!.Rda") 
        ```     
    3) ``'slidesPikettyAll.tex'``  
    -- a LaTeX/beamer document.  
    -- contains beamer slides cloned from some of Professor Piketty's powerpoint presentations.  
    
    4) ``'beamerthemepiketty.sty'``  
    -- a LaTeX/beamer theme style file.  
    -- contains a series of customization to obtain a standard, neutral theme.  
    -- for instance, frame titles are in a small-ish font to accommodate the sometimes long titles in Piketty's presentations. A hack makes the euro symbol available to LaTeX and searchable in the PDF (wow!).  
    
    5) ``'slidesPikettySaoPaulo2014.tex'``  
    -- a LaTeX/beamer command.  
    -- calls ``\includeonlyframes`` command with a list of frame labels to be included to reproduce the Sao Paulo 2014 presentation.  
    
    6) ``'slidesFiguresRename.Rnw'``  
    -- an ugly hack designed to rename the Figures in a way consistent with the Piketty book. It is called from 'slidesFigures.Rnw', at the very end. If omitted, the figures will be named 'Figure_x_y-1.png' instead of 'Figure_x_y.png'.
    
    7) ``'pgfbaseimage.sty'``  
    -- a hack designed to remove a warning when compiling the beamer class.  
    -- may be safely omitted.  
    
    8) ``'slidesFigures-concordance.tex'``, files with  ``'.vrb'``, ``'.nav'``, ``.snm``, ``.synctex.gz``, ``.toc``  
    -- various files produced by knitr as a by-product of compilation.  
    -- may or not be present in repository.  
    -- may be safely deleted.  


II) **FOLDERS/DIRECTORIES**:

    1) ``data``  
    -- contains data created with ``dataFiguresTables.Rnw``  
    -- data stored as dataframes in format ``.Rda``  
    -- files named ``TSx_y.Rda`` contain data from Piketty's worksheet labeled ``TSx.y`` occasional worksheet named ``cTSx.y``  
    -- files named ``df_x_y.Rda``  contain dataframes used to recreate figure ``x.y``, i.e. figure ``y`` from Chapter ``x``
    
    2) ``figures/bw``  
    -- contains black & white versions of the figures in ``.pdf`` and ``.png`` formats.
    
    3) ``figures/color``  
    -- contains color versions of the figures. in ``.pdf`` and ``.png`` formats.
    
    4) ``pictures``  
    -- contains images and figures not directly imported into the beamer documents, e.g. a screenshot of the 'World Top Incomes Database' website.
    
    5) ``pikettySlides/original``  
    -- contains copies of a sample of Professor Piketty's powerpoint presentations.

    6) ``pikettySlides/cloned``  
    -- contains 'cloned' versions of Professor Piketty's powerpoint presentations created with knitr/beamer.  
    
    7) ``cache``  
    -- contains the 'cache' created by knitr as a by-product of compilation.  
    -- may or not be present in repository.  
    -- may be safely deleted.  


------
Patrick Toche, December 2014.
