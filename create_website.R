
# install required packages
install.packages(c("distill", "postcards", "fontawesome"))
#install.packages(rmarkdown) #should already be installed with rstudio

# load packages
#library(rmarkdown) #should already be loaded in rstudio
library(distill) #builds the overall website and blog
library(postcards) #creates the stylised homepage postcard w/ social links
library(fontawesome) #used when changing font and theme

#create distill blog website, with folder structure set up for github pages
distill::create_blog(dir = ".",
                        title = "Gerald McQuade",
                        gh_pages = TRUE)
#NOW CLOSE RSTUDIO THEN REOPEN PROJECT AND BUILD WEBSITE IN BUILD PANE
#then edit _site.yml

#add postcards page-------------------------------------------------------------
distill::create_article(file = "postcard",  
                         template = "trestles",    
                         package = "postcards")

#now open the postcard.rmd and edit

#|TO MAKE POSTCARD THE HOMEPAGE: paste YAML "site: distill::distill_website" from 
#|index.rmd into the YAML header of postcard.rmd. then rename index.rmd as blog.rmd
#|and rename postcard.rmd as index.rmd.

#|While distill doesn't allow changes to the overall website structure, we can 
#|change the theme a little, choosing colors and fonts to personalize the website.

#Themes in distill are based on the CSS language. create a file called theme.css:
distill::create_theme()
