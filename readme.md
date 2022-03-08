# Reproducible Data Science using RMarkdown, Git, R packages, Docker, Make, and other tools

This course provides a comprehensive introduction to doing reproducible data analysis, which we define as analysis where the entire workflow or pipeline is as open and transparent as possible, making it possible for others, including our future selves, to be able to exactly reproduce any of its results.
We cover this topic by providing a thorough introduction to a set of R based and general computing tools such as RMarkdown, Git & GitHub, R packages, Docker, Gnu Make, and show how they can be used together to do reproducible data analysis that can then be shared with others.
After a general introduction on Day 1, where we introduce the core concept of a *research compendium*, we will begin by covering RMarkdown, knitr and related tools.
These are vital tools for reproducible research that allow us to produce data analysis reports, i.e. articles, slides, posters, websites, etc., by embedding analysis code (R, Python, etc) within the text of the report that is then executed, and the results it produces are inserted into the final output document.
On Day 2, we provide a comprehensive introduction to version control using Git, including using GitHub.
Git and GitHub are vital tools for the organization, maintenance, and distribution of our code, especially for large scale and long term projects involving multiple collaborators.
On Day 3, we cover how to create, maintain, distribute R packages.
R packages are obviously the principal means of distributing reusable R code generally, and here, we will also look at how R packages can be used also to create, maintain, and distribute research compendia.
On Day 4, we cover Docker, which is a now very popular means for producing reproducible computing environments across different devices, platforms, and operating systems.
On Day 5, we cover build automation tools, particularly Gnu Make, which are used for automatically running complex analysis code that involves multiple inter-dependencies between files.
On each day, therefore, we aim to provide a comprehensive and thorough introduction to a set of valuable and generally useful computing tools, each of which plays a key role in allowing us to do reproducible data science.

## Intended Audience

This course is relevant to anyone doing data science, whether in industry or in academic research.


## Teaching Format

This course will be hands-on and workshop based. Throughout each day, there will be some lecture style presentation, i.e., using slides, introducing and explaining key concepts. However, even in these cases, the topics being covered will include practical worked examples that will work through together.

The course will take place online using Zoom. On each day, the live video broadcasts will occur between (British Summer Time, UTC+1, timezone) at:

* 10am-12pm
* 1pm-3pm
* 4pm-6pm
 
All sessions will be video recorded and made available to all attendees as soon as possible, hopefully soon after each 2hr session.
  
Attendees in different time zones will be able to join in to some of these live broadcasts, even if all of them are not convenient times.
For example, attendees from North America may be able to join the live sessions at 1pm-3pm and 4pm-6pm, and then catch up with the 10am-12pm recorded session when it is uploaded (which will be soon after 6pm each day). 
By joining any live sessions that are possible, this will allow attendees to benefit from asking questions and having discussions, rather than just watching prerecorded sessions. 
In addition, most of the fifth and final day of the course is an open session that allows for any spill-over of content, any revision or repetition of topics, and will provide an opportunity for any remaining questions or discussions.

Although not strictly required, using a large monitor or preferably even a second monitor will make the learning experience better, as you will be able to see my RStudio and your own RStudio simultaneously.


## Assumed quantitative knowledge

Though we assume all participants will be experienced with some methods of statistical data analysis, no knowledge of any specific topic is required or assumed.

## Assumed computer background

We will only assume a minimal familiarity with R and RStudio.
More extensive R experience is desirable but not essential.
No experience whatsoever with RMarkdown, Git, R package development, Docker, Make will be assumed.

## Equipment and software requirements

A computer with a working version of R or RStudio is required. R and RStudio are both available as free and open source software for PCs, Macs, and Linux computers. R may be downloaded by following the links here https://www.r-project.org/. RStudio may be downloaded by following the links here: https://www.rstudio.com/.
All the R packages that we will use in this course will be possible to download and install during the workshop itself. In some cases, some additional open-source software, for example Stan, will need to be installed to use some R packages. 

Full installation instructions can be found [here](software.md).

# Course programme

## Monday, June 29

* Topic 1: *Doing reproducible data science*. We begin by providing an overview of reproducible data analysis generally and this course in particular.
We'll address why reproducible data analysis is valuable and what are the wide range of tools that are available for accomplishing it.
We'll explain that reproducible data analysis is sometimes motivated in terms of *open science*, which is committed to doing research where the data, analysis code, and results are made fully open and transparent to others.
However, reproducible data analysis can also be motivated simply as a means of doing more high quality, trustworthy, and robust data analysis, even when that analysis is of a confidential nature.
Here, we will also introduce the central concept of a *research compendium*, which is a bundling of the data, analysis code, and dynamic document files that produce the final reports of the analysis.
We will then overview the wide range of tools for creating, maintaining, and distributing research compendia that we will cover in the remainder of the course.

* Topic 2: *RMarkdown*. RMarkdown is a file format that contains a mixture of R code and text and from which we can produce data analysis reports (or slides, web pages, etc). The report is produced by automatically executing all the analysis code in the RMarkdown file and inserting the results, such as tables, figures, etc., along with the text into the final pdf, html, or MS Word output document.
While the basics of RMarkdown can be quickly learned, our aim here is to provide a thorough and comprehensive introduction to RMarkdown so as to get the most out of it.
This will include covering markdown syntax; mathematical typesetting with LaTeX; bibliography and citation management; cross references; formatting tables; controlling the placement of figures; scientific diagrams with TikZ; using alternative document templates; creating new customized templates.
We will primarily focus on creating articles as the output format, but will also focus on creating web pages and slides.

## Tuesday, June 30

* Topic 3: *Git & GitHub*. The next major tool that we will cover is Git.
Git is version control software, and version control software generally is vital for the organization and development of a set of source code files, especially when working collaboratively.
We will argue that all the source code files, including RMarkdown files, in the data analysis project should be under version control from the beginning of the project.
Using Git for this is an obvious choice because Git is powerful, open source, and is now the most popular and most widely version control system worldwide.
In addition, GitHub is an excellent, free to use, and popular hosting site for Git repositories.
Here, we will cover initializing Git repositories and cloning existing ones; staging and committing new files or modified files to the repository; writing commit messages; pushing and pulling to and from remote repositories; checking out previous versions of the repository; resetting or reverting to a previous state of the repository (i.e. undoing); branching and merging and rebasing.
The last of these topics, i.e. branching etc, describes some especially powerful features of Git, but ones that are vital for long term and complex projects, especially those involving multiple collaborators.

## Wednesday, July 1

* Topic 4: *R packages*. R packages are the means by which add-on or contributed R code is distributed, usually through CRAN repositories and GitHub.
In addition to being a general major tool for R users, packages can also be used specifically for developing and distributing research compendia.
In this section of the course, we will provide a thorough introduction to developing R packages that can then be pushed to GitHub to be installed by others. We will cover all the major aspects of an R package: writing reusable functions; writing documentation for our code using roxygen2; writing tests to ensure that our code is working as expected; adding data files, including their documentation; writing the DESCRIPTION where we provide all the information about what our package does, how to use it, what package dependencies it has, who the authors etc are; writing vignettes, which are long form documentation or tutorials;  uploading to GitHub for distribution; using pkgdown to create a website for the package or compendium.
This section of the course is intended to provide a comprehensive introduction to developing R packages generally, and research compendia in particular.
For the latter topic, we will follow the general guidelines outlined in Marwick et al (2018) "Packaging Data Analytical Work Reproducibly Using R (and Friends)".

## Thursday, July 2

* Topic 5: *Docker*. Docker is a powerful and now widely used "containerization" software that can be used to create reproducible environments and software stacks.
This allows users to run software identically across different devices, platforms, and operating system without installing any software other than Docker itself, which is open source and cross platform.
Thus, Docker allows us to write our code and perform our analyses on one machine in a container using a specific stack of software.
We may then create a specification of this container that others can download and which allows them recreate the same environment with the same software stack on their devices.
They can then run our code identically, using identical versions of all the software, including R packages, and including the lower level code libraries.
Distributing our research compendium to run in a Docker container is ultimate standard of reproducibility short of using identical hardware devices.
In this section of the course, we will learn how to pull general docker images from Docker repository and run containers based on them.
We will then focus on an R based Docker image, namely rocker, that will allow us to install an R/RStudio based container.
We will then extend this rocker image to create a customized R/RStudio environment with all the packages that we require to run our compendium.
We will create a Dockerfile specification of this compendium that we can distribute online, and that will allow others to download and recreate our environment exactly.
Finally, we will distribute this Docker based environment via the binder website which runs the container on server and that be then used interactively through a RStudio server session running the container.
As part of this coverage, we will also cover the packrat and checkpoint R packages that can be used for version control of R package dependencies.

## Friday, September 3

* Topic 6: *Build automation with Make*: Executing simple analyses may be as simple as running a short R script or RMarkdown file.
On the other hand, complex analyses may involve dozens of scripts, each pertaining to a particular part of the analysis pipeline, and there may be complex inter-dependencies between files, and the entire pipeline make take hours or even days to complete.
Tools such as Gnu Make allow us to run our entire analysis pipeline using single shell or R commands.
More importantly, these tools identify the inter-dependencies in the code base and so allow us to run only those parts of the pipelines that are affected after any change is made.
Gnu Make a generally useful tool for any software development, and can be used for many analysis related tasks, especially those that involve code in multiple different languages.
In this final section of the course, therefore, we will explore how to use Make to automate analysis workflows.
To do so, we will use some relatively simple but otherwise typical data analysis projects, involving data cleaning, modelling fitting, followed by report generation.
Here, we will also deal with parallel and distributed computing workflows and how these may be automated by Make.


