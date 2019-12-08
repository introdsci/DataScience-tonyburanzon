## ------------------------------------------------------------------------
suppressMessages(library(tidyverse))


## ------------------------------------------------------------------------
#course_meta = read_csv("./datasets/course-meta.csv")
#course = read_csv("./datasets/courses.csv")
course_meta = read_tsv("./datasets/course-meta.csv")
course = read_tsv("./datasets/courses.csv")
colnames(course_meta)
colnames(course)


## ------------------------------------------------------------------------
colnames(course_meta)[colnames(course_meta) == "catch"] = "timestamp"


## ------------------------------------------------------------------------
(plot = ggplot(data=course) + geom_bar(aes(x=course$difficulty), width=.3, fill='blue') 
    + xlab("Difficulty") + ylab("Count"))

