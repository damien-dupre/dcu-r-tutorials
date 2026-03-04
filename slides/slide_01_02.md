---
type: slides
---


# R packages

---

# What are the packages?

Another point of confusion with many new R users is the idea of an R package. R packages extend the functionality of R by providing additional functions, data, and documentation. They are written by a worldwide community of R users and can be downloaded for free from the internet.

A good analogy for **R packages is that they are like apps you can download onto a mobile phone**.

---

So R is like a new mobile phone: while it has a certain amount of features when you use it for the first time, it doesn’t have everything. R packages are like the apps you can download onto your phone from Apple’s App Store or Android’s Google Play.

R: A new phone |  R Packages: Apps you can download  
:------------:|:------------------------:
![](https://images.pexels.com/photos/47261/pexels-photo-47261.jpeg?raw=true)  |  ![](https://images.pexels.com/photos/147413/twitter-facebook-together-exchange-of-information-147413.jpeg?raw=true)

---

Let’s continue this analogy by considering the Instagram app for editing and sharing pictures. 

Say you have purchased a new phone and you would like to share a photo you have just taken with friends on Instagram. You need to:

1. **Install the app**: Since your phone is new and does not include the Instagram app, you need to download the app from either the App Store or Google Play. You do this once and you are set for the time being. You might need to do this again in the future when there is an update to the app.

2. **Open the app**: After you’ve installed Instagram, you need to open it.

Once Instagram is open on your phone, you can then proceed to share your photo with your friends and family. 

---

The process is very similar for using an R package. You need to:

1. **Install the package**: This is like installing an app on your phone. Most packages are not installed by default when you install R and RStudio. Thus if you want to use a package for the first time, you need to install it first. Once you’ve installed a package, you likely won’t install it again unless you want to update it to a newer version.

2. **“Load” the package**: “Loading” a package is like opening an app on your phone. Packages are not “loaded” by default when you start RStudio on your computer; you need to “load” each package you want to use every time you start RStudio.

---

To install a package, you need to download it from CRAN and to make it available to your R system  with the function `install.packages()`.

To use a package that has been installed, you need to “load it”. In other words, you need to “open it”. We do this by using the `library()` command. 

Once the package is loaded you can use all the functions from this package such as `get_random_joke()` if you have loaded the library called "norris".

---

# Let's use this {norris} package...