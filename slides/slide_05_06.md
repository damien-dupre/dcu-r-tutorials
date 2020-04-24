---
type: slides
---

# R Markdown

---

# R Markdown

Rmarkdown files are the best way to automatically create a data analytic report such as academic papers, PhD and master dissertation or company's white papers.

Rmarkdown files output are neat, fully reproducible and display all the power of R packages. These output can have different format:

- .doc open as Microsoft Word working document
- .pdf as LaTex formatted academic manuscript
- .html as a web page which can contain interactive displays or presentation slides

---

# R Markdown

If you have any question about Rmarkdown files, the online free book ["R Markdown: The Definitive Guide" by Yihui Xie, J. J. Allaire and Garrett Grolemund](https://bookdown.org/yihui/rmarkdown/) might answer it.

To open a Rmarkdown file, use File > New File > RMarkdown… > Document of output format html/pdf/doc and OK (you can also give it a Title like "My report").

---

# R Markdown

Even Rmarkdown file is created with a default content. A good advice would be to click on the `knit` button, which is producing the output document, in order to check that everything is ok form the start.

For example, to create a pdf output, a LaTex processor must be installed before producing any output. There are many LaTex processors available but `tinytex` can be installed directly from RStudio with the {tinytex} package and is recommended.

```
install.packages('tinytex')
tinytex::install_tinytex()
# to uninstall TinyTeX, run tinytex::uninstall_tinytex() 
```

---

# The 3 parts of a Rmarkdown file

An Rmarkdown document is in fact very simple, it has 3 important parts: the YAML, the text and the code chunks.

It contains three important types of content:

1. An (optional) YAML header surrounded by `---`s.
2. Text mixed with simple text formatting like `#` heading and `_italics_`.
3. Chunks of R code surrounded by ` ``` `.

---

# 1. The YAML

The top part of the file is called the YAML header. YAML is a recursive acronym that stands for “YAML Ain’t Markup Language”. It start and end with `---` and just define the main parameters of your documents such as title and output type.

```
---
title: "First RMarkdown"
author: "Damien Dupré"
output: html_document

```

According to your type of output, many more parameters can be added to the YAML.

---

# 2. The text

The text is just plain text using the Markdown language. This is a formatting language for plain text, and there are only about 15 rules to know.

Notice the syntax for:

- headers get rendered at multiple levels: `#`, `##`
- bold: `**word**`

There are some good cheatsheets to get you started, and here is one built into RStudio: Go to Help > Markdown Quick Reference

---

# 2. The text

Important: note that the hashtag # is used differently in Markdown and in R:

- in R, a hashtag indicates a comment that will not be evaluated. You can use as many as you want: # is equivalent to ######. It’s a matter of style. I use two ## to indicate a comment so that it’s clearer what is a comment versus what I don’t want to run at the moment.

- in Markdown, a hashtag indicates a level of a header. And the number you use matters: # is a “level one header”, meaning the biggest font and the top of the hierarchy. ### is a level three header, and will show up nested below the # and ## headers.

---

# 3. The code

When you open an .Rmd, you get a notebook interface where code and output are interleaved. These codes lines starting and finishing by ` ``` ` are called chunks. The curly brackets are designing the type of language, here `r` and the options to apply to this code chunk.

<img src="img_05_06_01.png" width="75%">

---

# 3. The code

You can run each code chunk by clicking the Run icon (it looks like a play button at the top of the chunk), or by pressing Cmd/Ctrl + Shift + Enter. RStudio executes the code and displays the results inline with the code.

When the output document is requested by clicking on the `knit` button, all the chunks are evaluated one after the other and keeps the objects previously stored and libraries loaded in the precedent chunks. For this reason, the first chunk is called `setup` chunk because it contains all the libraries to use and create object from datasets to be processed. 

---

# 3. The code

Importantly a second type of code chunk called inline chunks can be used directly inside a text sentence to print out the result of an object. These inline chunks are between ` `` `  character and starts with the letter r to indicate the computer language used.

For example if the object `my_value <- 3` is stored in a previous chunk, an inline chunk containing this object will be:

```
There are `r my_value` different parts in a Rmarkdown file.

```
and will be displayed in the output as:

> There are 3 different parts in a Rmarkdown file.

---

# Now you have some details, create and knit your first Rmarkadown!
