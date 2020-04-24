---
type: slides
---

# Creating academic outputs

---

# Creating academic outputs

As indicated previously, Rmarkdown files are the perfect tool to create high quality academic outputs.

---

# Supporting packages

Some packages are making this process even easier by providing templates and functions to help building the best academic outputs. Many of these package are developed and/or maintained by the [R Open Science organisation](https://ropensci.org/) but here only two packages will be presented: {papaja} and {rticles}.

---

# {papaja}: Reproducible APA manuscripts

Developed and maintained by Frederik Aust & Marius Barth, {papaja} is a fantastic package to produce research manuscript whether you are like APA style or not.

<img src="https://raw.githubusercontent.com/crsh/papaja/master/inst/images/template_selection.png" width="75%">

---

# {papaja}: Reproducible APA manuscripts

{papaja} is not (yet) on CRAN, and has to be downloaded and installed from github. Thankfully the package {remotes} (as well as the package {devtools}) have a dedicated function called `install_github()` to do it.

```
install.packages("remotes")

remotes::install_github("crsh/papaja")
```

---

# {papaja}: Reproducible APA manuscripts

After installing {papaja}, you can access a great research manuscript Rmarkdown template in the list of the template proposed (you need to reload the R session for it to appear). This template automatically generate a YAML producing the first page with title, author details, and abstract. The rest of the text written in the Rmarkdown produces a 2-spaced document which can be used as manuscript in many disciplines. 

<img src="https://blog.efpsa.org/wp-content/uploads/2015/06/knitting.png" width="75%">

---

# {papaja}: Reproducible APA manuscripts

Similarly as default Rmarkdown, the default APA Rmarkdown template comes with a document that can be knitted for the start to check that your configuration is running fine.

There is also the possibility to insert references in a bibtex format, and to select the style that you prefer.

Finally, the {papaja} package comes with many great functions such as `apa_print()` that has been presented in the Tutorial 4 to present linear models outputs automatically.

---

# {rticles}: Article Formats for R Markdown

{rticles} can easily be downloaded and installed from CRAN using the `install.packages()` function.

```
install.packages("rticles")
```

---

# {rticles}: Article Formats for R Markdown

Once installed and the R session restarted, more than 25 templates (the number keeps increasing) to the most prestigious academic journal can be accessed.

<img src="https://bookdown.org/yihui/rmarkdown/images/rticles-templates.png" width="75%">

---

# {rticles}: Article Formats for R Markdown

To use a template, just use File > New File > RMarkdown… > From Template and select your journal template. Once opened, `knit` the document without modification as a safety check and fill the document with your information, text and code.

Additionally, you can load the {papaja} package to use the `apa_print()` function and to display statistical test results in inline chunks directly in the text.

---

# Let's install {papaja} and {rticles} to have a look at these templates ...