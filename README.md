
Conversation opened. 1 unread message.

Skip to content
Using Gmail with screen readers
1 of 10,884
updated README.md file
Inbox

Mark Galassi
Attachments
11:39 AM (1 minute ago)
to me

Attachments area
(DRAFT!!!!! NOT FINAL README.md)

# Instructions for Lucy's Repository!

Welcome to my repository!

## Preliminary notes

* First, I reccomend downloading the program R and it's editing software RStudio. For this project the main program I used was RStudio. 

* Then I reccomend downloading the qualtrics survey data in my Repository that has the data from the survey the team at Reed conducted. The survey is titled `tidy_survey.csv`

* The survey is the main document that is used within the code that I am working on, and it's is crucial to the project. The survey was created by the Reed team and they let me use it. It consists of answers from Reedies who listened to the Qualtrics survey.

## Preparing to use the software

* After downloading RStudio and the survey data please download the following packages into RStudio: "janitor", "tidyverse", "dplyr" "scales" and "viridis". These packages are very helpful for the process called "data binning". 

Here is some code to help you download the packages and open the library of their code.

Paste these lines into R just once:

```
install.packages("dplyr")
install.packages("janitor")
install.packages("tidyverse")
install.packages("viridis")
install.packages("scales")
```

You could also put those on the command line:

```
R -e 'install.packages(c("dplyr", "janitor", "tidyverse", "viridis", "scales"))'
```

The following lines, instead, need to be in every use of R:

```
library(tidyverse)
library(janitor)
library(viridis)
library(scales)
library(dplyr)
```

## Running the software

After you have downloaded the survey, and the packages make sure that in your own code you rewrite the file name to the location "your" file is at. For example my file is located at "/home/lucy/Downloads/tidy_survey.csv", but your's will probably have your name and whatever you titled the survey. 

Note that if you cloned with git then you should just have
`tidy_survey.csv` in your current directory.  You can now type:

```
Rscript lucyevansdatacode.R
``` 

The code itself ("lucyevansdatacode.R") is not finished, but that's because there is so much data to look through! A survey this thourough takes a lot of time, and I've only scratched the surface. The dream is that once the survey is cleaned up there will be bins dedicated to the way the voices in the survey were described. 

Once the code is ran, which you can find a file of the code in the repository titled: "Lucy_Evans_Linguistic_Discrimination.pdf" then you can see what I have been testing. Renaming bins into different categories and using the "tabyl" feature to showcase the bins. 

## The write-up

Moving on from the code there is my research paper that describes my research into the Reed Linguistic Department's survey of Reedies and how they feel they are effected by linguistic discrimination.

Next, is my slide-show that I will be presenting infront of my peers and mentors. It is dedicated to both my main project and side project.

That's all to my repository! Thanks!
README.md
Displaying README.md.
