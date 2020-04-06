# DCU R Tutorials setup

The implementation of these tutorials is based on Ines Montani's [template hosted on GitHub](https://github.com/ines/course-starter-r). The front-end is powered by
[Gatsby](http://gatsbyjs.org/) and [Reveal.js](https://revealjs.com) and the
back-end code execution uses [Binder](https://mybinder.org).

## Additional examples

For more examples of this setup possibilities, you can have a look at:

- [R-bootcamp](https://r-bootcamp.netlify.com/)
- [GAMs in R](https://noamross.github.io/gams-in-r-course/)

There is a couple of other sources decribed [here](https://github.com/flor14/tutorials) but my initial motivation came from a blog post by [Florencia d'Andrea](https://florencia.netlify.com/2020/03/cooking-your-first-tutorial.en-us/).

Instead of replicating Ines' instructions, I'll provide my insights for the deployement of my tutorial website.

## Running gatsby in local

First, be sure that your computer has the configuration to install gatsby. To to so, just run the quickstart tutorial [described here with a nice video](https://www.gatsbyjs.org/docs/quick-start). If you can run your localhost:8000, nothing can stop you.

## Cloning https://github.com/ines/course-starter-r

Ines has made a wonderful job and made easy to clone her template. Once it's done, just follow the steps to deploy the templates, modifications can come after.

- Installing gatsby in the folder. Remember that gabsby has to be in this folder, so `cd path/to/your/folder` is required. Before the bash code indicated, I had to run a `npm update`

```bash
cd path/to/your/folder
npm update                 # Update to the Node Package Manager (npm)
npm install -g gatsby-cli  # Install Gatsby globally
npm install                # Install dependencies
npm run dev                # Run the development server
```

- Binder is very long to build the docker image but if you have an experience in installing R and tidyverse on a AWS EC2 instances, you know how long the BH package can take. Surprisingly, Binder works very well and deploy a jupyter hub with the possibility to launch Jupyter Notebooks and RStudio session in the cloud... for free.

- Pushing to Netlify is smooth and easy, just remember to change your domain.

## Course content

Now you can cutomise your content. Once again, it is very easy to just use Ines instructions: there is not much to do except creating chapters, slides and exercises.

Here is some insights from my experience:

- For some reasons, I didn't manage to use `'` in the chapter's names.
- Except if you disable it, slides have to start and to end with a title slide. However title slides are not permitted anywhere else.
- Everything is markdown, not Rmarkdown, code chunks are not run and no output is displayed. To display output, a code chunck `out` has to be created.
- The default's layout can be improve to add a title and a subtitle to the main page. The text has to be added in `src/pages/index.js`.

## Conclusion

There is now some nice package to create R interactive tutorial such as {swirl}, {learnr} and {RTutor}. There are great ressources online for example [here](https://swirlstats.com/), [here](https://skranz.github.io//r/2019/04/29/RTutor_vs_Learnr.html?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+skranz_R+%28Economics+and+R+%28R+Posts%29%29), [here](https://desiree.rbind.io/post/2020/learnr-iframes/) and [here](https://rstudio.github.io/learnr/). However, they all require a shiny server running in the background. Even if shiny is great, making shiny scalable is not cheap, once the 5 users of the free shinyapps.io account are in, it's the end.

Despite being slow to start and being limited to 100 simultaneous users, if the docker image built by Binder is scalable to my students for free, I'm in. 