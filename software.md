The required software for this workshop is all free and open source
and will run identically on Windows, Mac OS X, and Linux platforms.

There are six or seven main pieces of software to install:

-   [R](https://www.r-project.org/): An environment for statistical
    computing.
-   [Rstudio](https://www.rstudio.com/): An integrated development
    environment for using R.
-   [tidyverse](https://www.tidyverse.org/): A bundle of R packages to
    use R the modern way.
-   Miscellaneous R packages: Other vital, or just handy, R packages.
-   [LaTeX](https://www.latex-project.org/): To make high quality reports with RMarkdown, we need to use LaTeX, which is software that is external to R. Unless you already use LaTeX, the easiest thing to do to use LaTeX in R is to install `tinytex`.
-   [Git](http://mc-stan.org/): Version control software.
-   [docker](https://github.com/paul-buerkner/brms): "Containerization" software for virtual operating systems and computing environments.

## Installing R

Go to the [R](https://www.r-project.org/) website and follow the links
for downloading. On Windows, this should lead you to

-   <https://cran.r-project.org/bin/windows/base/>.

Downloading this and following the usual Windows installation process,
you\'ll then have a full working version of R.

On Macs, the installation procedure is essentially identical. The latest
Mac installer should be available at

-   <https://cran.r-project.org/bin/macosx/>.

Download this and follow the usual Mac installation process to get a
full working version of R for Macs.

## Installing Rstudio

Using Rstudio is not strictly necessary. You can do all you need to do
with R without using Rstudio. However, many people have found that using
R is more convenient and pleasant when working through Rstudio. To
install it, go to the [Rstudio](https://www.rstudio.com/) website,
specifically to

-   <https://www.rstudio.com/products/rstudio/download/>

which will list all the available installers. Note that you just want
the Rstudio *desktop* program. The Rstudio *server* is something else
(basically it is for providing remote access to Rstudio hosted on Linux
servers).

Again, you\'ll just follow the usual installation process for Windows or
Macs to install Rstudio using these installers.

## Installing the tidyverse packages

The so-called [tidyverse](https://www.tidyverse.org/) is a collection of
interrelated R packages that implement essentially a new standard
library for R. In other words, the
[tidyverse](https://www.tidyverse.org/) gives us a bundle tools for
doing commonplace data manipulation and visualization and programming.
It represents the modern way to use R, and in my opinion, it\'s the best
way to use R. All the [tidyverse](https://www.tidyverse.org/) packages
can be installed by typing the following command in R:

``` {.R}
install.packages("tidyverse")
```

The main packages that are contained within the
[tidyverse](https://www.tidyverse.org/) bundle are listed
[here](https://www.tidyverse.org/packages/).

## Installing Miscellaneous R packages

Many of the packages that we will need will be installed by installing the `tidyverse`, but there are some other R packages that we will use: 
``` {.R}
install.packages("devtools")
install.packages("drake")
```

## Installing LaTeX using `tinytex`

Unless you already use LaTeX and have it installed already, the easiest thing to do is to install `tinytex` as follows.
``` {.R}
install.packages("tinytex")
tinytex::install_tinytex()
```
This installation will take some time. After it completes, you should restart RStudio.
After you restart, type the following command (note the three `:`'s):
```{.R}
tinytex:::is_tinytex()
```

Test that rmarkdown (which will have be installed by `tidyvese`) will render pdf documents using LaTeX with the following code.
```{.R}
writeLines("Hello $x^2$", 'test.Rmd')
rmarkdown::render("test.Rmd", output_format = "pdf_document")
```
If that worked, you should have a pdf document named `test.pdf` in your working directory. 

## Installing Git

We will use Git and GitHub to share materials. Although it is possible to use GitHub without using Git, for what we will be doing, it will be far easier to use Git. All we need is one or two commands. 

Mac users usually don't have to do anything. Just go to your terminal and type `which git`, and you should get a oneliner essentially informing you that Git installed. It might look like `/usr/bin/git`. For Windows users, you should install *Git bash* from here https://gitforwindows.org/. Just download and install as you would with any Windows installer. When installing just accept all the defaults in the dialog box.

## Installing Docker

Docker is "containerization" software. We can think containers as software stacks or computing environments running in virtual operating systems. 
Strictly speaking, containers are not virtual operating systems, but in practice we can view them as such.
To install Docker on Windows or Macs go to https://www.docker.com/products/docker-desktop and install the *stable* version.
We use Docker by issuing commands like `docker pull ...`, `docker run ...`.
On Macs, these are run from the terminal.
On Windows, these commands can be run from the DOS command line or from the Powershell terminal, both of which will be installed by default.
