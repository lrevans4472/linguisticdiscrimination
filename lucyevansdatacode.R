library(tidyverse)
library(janitor)
library(viridis)
library(scales)
library(dplyr)

#reading in data
Survey <- read_csv("/home/lucy/Downloads/tidy_survey.csv")
View(Survey)

q1 <- Survey %>%
  tabyl(rating)
View(q1)

#speaker a1
Survey <- Survey %>%
    mutate(rating = recode(rating, "Defensive" = "Defensive"),
         rating = recode(rating, "annoyed" = "Upset"),
         rating = recode(rating, "so neutral" = "Neutral"),
         rating = recode(rating, "Older" = "Older"),
         rating = recode(rating, "inarticulate" = "Inarticulate"),
         rating = recode(rating, "genuine" = "Geniune"),
         rating = recode(rating, "Older" = "Older"),
         rating = recode(rating, "Hesitant" = "Unsure"),
         rating = recode(rating, "Neutral" = "Neutral"),
         rating = recode(rating, "Well-spoken" = "Articulate"),
         rating = recode(rating, "frustrated" = "Upset"),
         rating = recode(rating, "The person seems to be a little frustrated." = "Upset"),
         rating = recode(rating, "Man," = "Male"),
         rating = recode(rating, "concerned" = "Worried"),
         rating = recode(rating, "male" = "Male"),
         rating = recode(rating, "funny" = "Funny"),
         rating = recode(rating, "Calm" = "Calm"),
         rating = recode(rating, "masculine" = "Masculine"),
         rating = recode(rating, "Male" = "Male"),
         rating = recode(rating, "Nervous" = "Unsure"),
         rating = recode(rating, "Voice sounds like someone from the Midwest" = "Midwest_Dialect"),
         rating = recode(rating, "Somewhat uncertain of themselves" = "Unsure"),
         rating = recode(rating, "feels self-conscious" = "Unsure"))

#speaker b2

Survey <- Survey %>%
  mutate(rating = recode(rating, "Not very smart" = "Unintelligent"),
         rating = recode(rating, "self-conscious" = "Unsure2"),
         rating = recode(rating, "high voice" = "High_Voice"),
         rating = recode(rating, "uncertain" = "Unsure2"),
         rating = recode(rating, "noncommittal" = "Unsure2"),
         rating = recode(rating, "Friendly" = "Extroverted"),
         rating = recode(rating, "Energetic" = "Lively"),
         rating = recode(rating, "proud" = "Confident"),
         rating = recode(rating, "energetic" = "Lively"),
         rating = recode(rating, "female" = "Female"),
         rating = recode(rating, "Silly" = "Funny"),
         rating = recode(rating, "not confident" = "Unsure2"),
         rating = recode(rating, "outgoing" = "Extroverted"),
         rating = recode(rating, "Upbeat" = "Lively"))

View(q1)