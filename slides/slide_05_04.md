---
type: slides
---

# R Script

---

# R Script

R Scripts contains the brute code and some comments, that's it. Even if these files can look very raw, they are usually enough to ensure the reproducibility of your analysis, for you at least.

R Script structure:

1. Packages used
2. Options and functions
3. Data access
4. Saved results

---

# Packages used

R Scripts always start with the packages loaded with the `library()` function which are used in your code.

---

# R options and functions

Then some specific options are used. There is an infinity of options to modify but the ones that I find the most important are the following:

```
options(scipen = 999) # desactivate the scientific numbering stype (e.g., 3.14e-4 becomes 0.000314)

set.seed(123) # is used to replicate the generation of random numbers
```

It is also very easy to create your own functions in R. The best in to store them at the beginning of a script if they are short or to call a R script dedicated to these home made function using `source("C:/path/to/script/function.R")`.

---

# Open your file

If you are working with RStudio Cloud, any kind of local dataset has to be uploaded to the remote cloud instance before being used. 

The easiest is to use the RStudio Cloud interface to do so, in the bottom right pane called `Files` click `upload` and browse your data file to upload it on this remote instance. The data on the could instance become an independent copy of the data on your local computer with any connection between the two (modification on the local version will not be passed on the remote version).

---

# Open your file

One of the most complicated but essential part is opening the data but RStudio IDE makes it very easy to do. So let's distinguish 2 methods to access to your data:

1. With RStudio IDE (for early beginners)
2. Using R code (method should be choose as soon as possible)

---

# Open your file

1. What you can do as a beginner: Open data with RStudio `Import Dataset` function.

<img src="img_05_04_01.png" width="25%">

Remember that .csv files are basically text files.

<img src="img_05_04_02.png" width="25%">

If you see your data in the preview, you can click `Import` to create an object containing your data. A code will be executed on the console, **Copy and Paste the first line of this code in your R script**. You will not have to do it manually once the code is in your script. 

---

# Open your file

2. What you have to do to ensure code reproducibility: Open data with the appropriate function.

**In R, you need to use a function to open a data file.** There is a function per type of files like `read.csv()` for example (proprietary file type like .xls or .xlsx will need specific packages to access to their open functions).

The main argument of these functions is `file` which corresponds to the path to a file, followed by the name of the file and it extension type such as **C:/path/to/my/file.csv** which will be open in R with the following code:

```
my_file_object <- read.csv("C:/path/to/my/file.csv")
```
---

# Open your file

The following codes will generate an error:

```
# Incomplet path
my_file_object <- read.csv("/path/to/my/file.csv")
# Missing file extension
my_file_object <- read.csv("C:/path/to/my/file")
# Use of backward slash
my_file_object <- read.csv("C:\path\to\my\file.csv")
```

It is very important to notice that file paths usually used in windows OS are different than the ones used in iOS or Linux. Windows uses back slash `\` while iOS or Linux are using forward slash `/`. R is also using forward slash `/` and windows users have to manually change them when copy pasting files paths in R.

---

# Open your file

An opened RStudio session has a default working directory indicated below the console tab name. All the files within this directory can be opened just by using the file name and extension in the read data function. 

```{r echo=TRUE, eval=FALSE}
my_file_object <- read.csv("file.csv") # If "file.csv" is located in the same directory as RStudio default.
```

---

# Open your file

Managing file paths is complicated, therefore the package {here} solves a lot of problem in the case of RStudio used with Projects.

To access to data, an even easier way would be to use a website URL for data stored online instead of file paths.

Even if base R provides basic functions to open a data file, there are also foreign packages that are providing functions to open data files as well such as {readr}, {data.table} or {vroom} for example.

Because we have started in the tidyverse, let's stay in the tidyverse and use the [{readr}](https://readr.tidyverse.org/) and [{readxl}](https://readxl.tidyverse.org/) packages (even if it's not the most efficient ones).

Usually, .xls and .xlsx file formats MUST BE AVOIDED and .csv file formats used instead. The reason is because .csv files are open-source, light weight, and clean whereas .xls and .xlsx have not any of these essential properties.

---

# Save your file

Once the data frame objects are created, the R script can include any kind of data transformation, visualisation and model code.

You can save the R script in the File tab > Save As and remember to use a .R extension.

Data are saved by using a function which takes the name of the data frame object as first argument and the new path as second argument:

```
write.csv(my_file_object, "C:/path/to/my/new_file.csv")
```

---

# Save your file

Using only the name of the file with extension will save it on RStudio's default directory:

```
write.csv(my_file_object, "new_file.csv")
```

---

# Time to create a full R script with libraries, options, data and code!