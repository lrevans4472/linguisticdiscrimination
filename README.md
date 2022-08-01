
library(tidyverse)
library(janitor)
library(viridis)
library(scales)

#reading in data
Survey <- read_csv("/home/lucy/Downloads/tidy_survey.csv")
View(Survey)

q1 <- Survey %>%
  tabyl(rating)
View(q1)

#binning demographics

Survey <- Survey %>%
  mutate(rating = recode(rating, "Defensive," = "Defensive"), 
         rating = recode(rating, "annoyed" = "Upset"),
         rating = recode(rating, "Man," = "Male"),
         rating = recode(rating, "Older" = "Older"),
         rating = recode(rating, "inarticulate" = "Inarticulate"),
         rating = recode(rating, "genuine" = "Geniune"),
         rating = recode(rating, "Hesitant" = "Unsure"),
         rating = recode(rating, "This person seems to be a little frustrated" = "Upset"),
         rating = recode(rating, "Neutral" = "Neutral"),
         rating = recode(rating, "Well-spoken" = "Articulate"),
         rating = recode(rating, "frustrated" = "Upset"),
         rating = recode(rating, "concerned" = "Cautious"),
         rating = recode(rating, "male" = "Male"),
         rating = recode(rating, "funny" = "Funny"),
         rating = recode(rating, "Calm" = "Calm"),
         rating = recode(rating, "masculine" = "Masculine"),
         rating = recode(rating, "feels self-conscious" = "Unsure"),
         rating  = recode(rating, "Male" = "Male"),
         rating = recode(rating, "Nervous" = "Unsure"),
         rating = recode(rating, "Somewhat uncertain of themselves" = "Unsure"),
         rating = recode(rating, "Probing" = "Inquisitive"),
         rating = recode(rating, "Lazy" = "Lazy"),
         rating = recode(rating, "laid back" = "Calm"),
         rating = recode(rating, "Bored" = "Bored"),
         rating = recode(rating, "man" = "Male"),
         rating = recode(rating, "Casual" = "Neutral"),
         rating = recode(rating, "Queer" = "Queer"),
         rating = recode(rating, "confusing" = "Confused"),
         rating = recode(rating, "Californian" = "Californian"), 
         rating = recode(rating, "Selfish" = "Selfish"),
         rating = recode(rating, "Aloof" = "Introverted"),
         rating = recode(rating, "Cool" = "Interesting"),
         rating = recode(rating, "Happy" = "Bubbly"),
         rating = recode(rating, "Connected" = "Intelligent"),
         rating = recode(rating, "Vocal fry" = "Vocal_Fry"),
         rating = recode(rating, "sassy" = "Sassy"),
         rating = recode(rating, "relaxed" = "Calm"),
         rating = recode(rating, "playful" = "Funny"),
         rating = recode(rating, "Casual" = "Neutral"),
         rating = recode(rating, "Thoughful" = "Intelligent"),
         rating = recode(rating, "Male" = "Male"),
         rating = recode(rating, "likes knowing the inside scoop" = "Nosey"),
         rating = recode(rating, "Gay" = "Gay"),
         rating = recode(rating, "slacker" = "Lazy"),
         rating = recode(rating, "Bored" = "Bored"),
         rating = recode(rating, "Positive" = "Upbeat"),
         rating = recode(rating, "kinda unnerving" = "Unsure"),
         rating = recode(rating, "Younger" = "Young"),
         rating = recode(rating, "Female" = "Female"),
         rating = recode(rating, "sincere" = "Articulate"),
         rating = recode(rating, "story teller" = "Extroverted"),
         rating = recode(rating, "a little nervous" = "Unsure"),
         rating = recode(rating, "formal" = "Formal"),
         rating = recode(rating, "People-pleaser" = "Unsure"),
         rating = recode(rating, "Timid" = "Unsure"),
         rating = recode(rating, "Energetic" = "Upbeat"),
         rating = recode(rating, "Maya" = "NA"),
         rating = recode(rating, "Articulate" = "Articulate"),
         rating = recode(rating, "reflective" = "Intelligent"),
         rating = recode(rating, "American" = "American"),
         rating = recode(rating, "female" = "Female"),
         rating = recode(rating, "Young" = "Young"),
         rating = recode(rating, "earnest" = "Serious"),
         rating = recode(rating, "Sincere" = "Serious"),
         rating = recode(rating, "Female" = "Female"),
         rating = recode(rating, "nice" = "Friendly"),
         rating = recode(rating, "relaxed" = "Calm"),
         rating = recode(rating, "Confrontational" = "Confident"),
         rating = recode(rating, "annoyed" = "Upset"),
         rating = recode(rating, "sound serious" = "Serious"),
         rating = recode(rating, "Male" = "Male"),
         rating = recode(rating, "precautious" = "Unsure"),
         rating = recode(rating, "serious" = "Serious"),
         rating = recode(rating, "Not outgoing" = "Unsure"),
         rating = recode(rating, "annoying" = "Upset"),
         rating = recode(rating, "condescending" = "Rude"),
         rating = recode(rating, "concerned" = "Upset"),
         rating = recode(rating, "pompous" = "Confident"),
         rating = recode(rating, "Calm" = "Calm"),
         rating = recode(rating, "self indulgent" = "Extravegant"),
         rating = recode(rating, "male indentified" = "Male"),
         rating = recode(rating, "decisive" = "Understanding"),
         rating = recode(rating, "British," = "British"))

#speakerB2

Survey <- Survey %>%
  mutate(rating = recode(rating, "Sounds a little stressed but making it" = "Upset"),
         rating = recode(rating, "Not very smart" = "Unintelligent"),
         rating = recode(rating, "self-conscious" = "Unsure"),
         rating = recode(rating, "high voice" = "High_Voice"),
         rating = recode(rating, "uncertain" = "Unsure"),
         rating = recode(rating, "noncommittal" = "Noncommittal"),
         rating = recode(rating, "They sound like someone who enjoys talking with others" = "Extroverted"),
         rating = recode(rating, "Friendly" = "Friendly"),
         rating = recode(rating, "Energetic" = "Upbeat"),
         rating = recode(rating, "proud" = "Confident"),
         rating = recode(rating, "energetic" = "Upbeat"),
         rating = recode(rating, "female" = "Female"),
         rating = recode(rating, "High-pitched suggesting tension" = "High_Pitch"),
         rating = recode(rating, "Silly" = "Funny"),
         rating = recode(rating, "Open; wants to share things" = "Extroverted"),
         rating = recode(rating, "non confident" = "Unsure"),
         rating = recode(rating, "outgoing" = "Extroverted"),
         rating = recode(rating, "Upbeat" = "Upbeat"))


#speakerA1

Survey <- Survey %>%
  mutate(rating = recode(rating, 
         
#a2


Survey <- Survey %>%
  mutate(rating = recode(rating, "Lighthearted" = "Calm"),
         rating = recode(rating, "confusing" = "Inarticulate"),
         rating = recode(rating, "gruff" = "Raspy_Voice"),
         rating = recode(rating, "congested" = "Raspy_Voice"),
         rating = recode(rating, "honestly seems like a bit of a dick" = "Rude"),
         rating = recode(rating, "no clue" = "NA"),
         rating = recode(rating, "insecure" = "Unsure"),
         rating = recode(rating, "They sound confused" = "Confused"),
         rating = recode(rating, "tall" = "Tall"),
         rating = recode(rating, "Agitated" = "Upset"),
         rating = recode(rating, "This person seems disinterested" = "Bored"),
         rating = recode(rating, "Boring" = "Bored"),
         rating = recode(rating, "Funny" = "Funny"),
         rating = recode(rating, "haven't read a book" = "NA"),
         rating = recode(rating, "The person seems annoyed." = "Upset"),
         rating = recode(rating, "male" = "Male"),
         rating = recode(rating, "Academic" = "Intelligent"),
         rating = recode(rating, "forceful" = "Forceful"),
         rating = recode(rating, "scholarly" = "Intelligent"),
         rating = recode(rating, "Annoyed" = "Upset"),
         rating = recode(rating, "Jock" = "Athletic"),
         rating = recode(rating, "Familiar" = "Neutral"),
         rating = recode(rating, "Lazy" = "Lazy"),
         rating = recode(rating, "Less educated" = "Unintelligent"),
         rating = recode(rating, "indignant" = "Upset"),
         rating = recode(rating, "Friendly" = "Friendly"),
         rating = recode(rating, "Fast spoken" = "Fast_Speaker"),
         rating = recode(rating, "well-spoken" = "Articulate"),
         rating = recode(rating, "queer" = "Queer"),
         rating = recode(rating, "thoughtful" = "Thoughtful"),
         rating = recode(rating, "fast words" = "Fast_Speark"),
         rating = recode(rating, "calm" = "Calm"),
         rating = recode(rating, "young" = "Young"),
         rating = recode(rating, "?" = "NA"),
         rating = recode(rating, "young" = "Young"),
         rating = recode(rating, "Well spoken" = "Articulate"),
         rating = recode(rating, "Helpful" = "Friendly"),
         rating = recode(rating, "Mysterious" = "Mysterious"),
         rating = recode(rating, "Fun" = "Upbeat"),
         rating = recode(rating, "gossiping" = "Gossiper"),
         rating = recode(rating, "Uninvolved" = "Introverted"),
         rating = recode(rating, "pretentious" = "Pretentious"),
         rating = recode(rating, "confident" = "Confident"),
         rating = recode(rating, "unsure" = "Unsure"),
         rating = recode(rating, "Likes to gossip" = "Gossiper"),
         rating = recode(rating, "self-concious" = "Unsure"),
         rating = recode(rating, "Motivated" = "Confident"),
         rating = recode(rating, "gay" = "Gay"),
         rating = recode(rating, "Gay" = "Gay"),
         rating = recode(rating, "friendly" = "Friendly"),
         rating = recode(rating, "Many vocal inflections" = "Articulate"),
         rating = reocde(rating, "Sweet" = "Friendly"),
         rating = recode(rating, "young" = "Young"),
         rating = recode(rating, "airy" = "Cheerful"),
         rating = recode(rating, "nervous" = "Shy"),
         rating = recode(rating, "soft spoken" = "Soft_Voice"),
         rating = recode(rating, "novice" = "Extroverted"),
         ratnig = recode(rating, "Honest" = "Honest"),
         rating = recode(rating, "Naive" = "Naive"),
         rating = recode(rating, "")

#b1

Survey <- Survey %>%
  mutate(rating = recode(rating, "Excited" = "Upbeat"),
         rating = recode(rating, "Child" = "Child"),
         rating = recode(rating, "high pitch" = "High_Voice"),
         rating = recode(rating, "high pitched" = "High_Voice"),
         rating = recode(rating, "female" = "Female"),
         rating = recode(rating, "Young" = "Young"),
         rating = recode(rating, "this might be my homie i love them" = "NA"),
         rating = recode(rating, "They sound busy" = "Busy"),
         rating = recode(rating, "young" = "Young"),
         rating = recode(rating, "cute" = "Cute"),
         rating = recode(rating, "Kind" = "Friendly"),
         rating = recode(rating, "Lighthearted" = "Calm"),
         rating = recode(rating, "Annoying" = "Upset"),
         rating = recode(rating, "Bubbly" = "Upbeat"),
         rating = recode(rating, "Expressive" = "Articulate"),
         rating = recode(rating, "very high pitched" = "High_Voice"),
         rating = recode(rating, "female" = "Female"),
         rating = recode(rating, "fun!" = "Upbeat"),
         rating = recode(rating, "Busy" = "Busy"),
         rating = recode(rating, "Driven" = "Confident"),
         rating = recode(rating, "easygoing" = "Upbeat"),
         rating = recode(rating, "Friendly" = "Friendly"))

tabyl(rating)                    


                      
                         
                         
