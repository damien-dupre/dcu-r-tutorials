---
type: slides
---

# Coding with RStudio Cloud

---

# Coding with RStudio Cloud

RStudio Cloud is a hosted version of RStudio in the cloud (virtual machine on a remote server) which can be accessed on this website https://rstudio.cloud/ for free. [RStudio has a great video and presentation of all RStudio Cloud details](https://resources.rstudio.com/webinars/teaching-r-online-with-rstudio-cloud) but here we are using RStudio Cloud as a free private proxy for R and RStudio without installing anything. 

This cloud instance of RStudio has only 1 CPU (very low computation power) but it reproduces the exact same interface as the one you can open on your local computer without having to install R and RStudio.

<img src="img_05_02_01.png" width="75%">

---

# Coding with RStudio Cloud

To access to RStudio cloud for the first time:

1. Go to https://rstudio.cloud/
2. Sign In with:
  - email (real or not)
  - password
  - first name (real or not)
  - last name (real or not)
  
No need to provide your real information if you just want to practice in RStudio.

---

# Coding with RStudio Cloud

<img src="img_05_02_02.png" width="75%">

---

# Coding with RStudio Cloud

Once signed in/logged in, you just need to create a new project in order to launch an RStudio session.

<img src="img_05_02_03.png" width="75%">

---

# Coding with RStudio Cloud

While you can do pretty much everything you want within base-R, you’ll find that most people these days do their R programming in an application called RStudio. RStudio is a graphical user interface (GUI)-like interface for R that makes programming in R a bit easier. In fact, once you’ve started to use RStudio, you’ll likely never need to open the base R application again.

---

# RStudio Interface

When you open RStudio, you’ll see the following three windows (also called panes).

<img src="img_05_02_04.png" width="75%">

---

# Console: R’s Heart

The console is the heart of R. Here is where R actually evaluates code. At the beginning of the console you’ll see the character `>`. This is a prompt that tells you that R is ready for new code. You can type code directly into the console after the prompt and get an immediate response. For example, if you type `1+1` into the console and press enter, you’ll see that R immediately gives an output of 2.

The different status of the R console were presented in the DCU R Tutorial 1, don't hesitate to have a second look at it.

<img src="img_05_02_05.png" width="75%">

---

# Console: R’s Heart

You can execute code by typing it directly into the Console. However, if you type code into the console, it won’t be saved. And if you make a mistake in typing code into the console, you’d have to re-type everything all over again. Instead, it’s better to write all your code in a document called the Code Editor and presented here after.

---

# Environment: R’s Brain

The Environment tab of this panel shows you the names of all the data objects (like vectors, matrices, and data frames) that you’ve defined in your current R session. 

You can also see information like the number of observations and rows in data objects. 

<img src="img_05_02_06.png" width="75%">

---

# Files / Plots / Packages / Help

The **Files** panel gives you access to the file directory on your hard drive.

The **Plots** panel (no big surprise), shows all your plots. There are buttons for opening the plot in a separate window and exporting the plot as a pdf or jpeg.

The **Packages** shows a list of all the R packages installed on the local or remote machine and indicates whether or not they are currently loaded.

With the **Help** menu for R functions you can access to essential information to use them. Just have a look at some of them by typing `?` followed by the function name such as:

```
?lm
?summary
```

---

# Code Editor: R's Nervous System

If the Console is the heart and the Environment the brain, the Code Editor pane is definitely the nervous system. It makes the link between all the previous pane and allows the reproduce actions and behaviours.

This pane is not active when you first enter in RStudio and requires the user to create a new file by clicking **File** > **New File** > **R Script**

<img src="img_05_02_07.png" width="75%">

---

# Code Editor: R's Nervous System

In this R Script, you will be able to write your code and to save your code in a .R document (basically text for R).

Each line corresponds to a command except:

- if a function is spread on multiple lines until the closing brackets,
- if a `%>%` operator is used to chain multiple commands, 
- if a `+` operator is used to add multiple layers to a ggplot.

All text starting with the symbol `#` is not computed and used as a comment to give information.

---

# Code Editor: R's Nervous System

In the code editor, 3 keyboard shortcuts are essential:

`Ctrl` + `Enter` (windows) or `Cmd` + `Return` (mac): Run the line where the cursor is

`Alt` + `-` (windows) or `Option` + `-` (mac): Insert assignment arrow

`Ctrl` + `Shift` + `M` (windows) or	`Cmd` + `Shift` + `M` (mac): Insert pipe operator

---

# Time to create an account with RStudio Cloud and to access to its interface.