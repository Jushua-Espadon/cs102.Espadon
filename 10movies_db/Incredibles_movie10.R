
install.packages('dplyr')
install.packages('dbplyr')
library(dplyr,dbplyr)
install.packages('RMariaDB')
library(RMariaDB)

connection <- dbConnect(RMariaDB::MariaDB(), 
                        dsn="mysql",
                        Server = "localhost",
                        dbname = "10_movie", 
                        user = "root", 
                        password ='')

dbListTables(connection)

dbListFields(connection,"movie_info")

posts_dta <- dbGetQuery(connection, "SELECT * 10_movie.movie_info")
# checking for the columns and its content
glimpse(posts_dta)

posts_dta[c(1:10),]

query1 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Hercules', 'Anthonyjkb', '2018-11-10', '7/10', 'Definitely not as good as the first Incredibles movie', 'Good: The animation for this movie was excellent just like most other Pixar movies, it was funny (especially Jack Jack) and I really liked the action sequences throughout the movie. I liked that the movie showed that parenting (when done right) can be heroic. Bad: I thought this film has quite a few problems, the biggest problem was that the ending was pretty predictable, I could see it coming. Also, there was a feminism theme with Helen which was okay but at times it seemed to shove it in my face and it got to be annoying. There seemed to be a little too much going on in the movie and a few too many characters. I am glad I saw the movie, I just do not think I would see it again anytime soon.')"
query_result1<- dbSendQuery(connection, query1)

dbClearResult(query_result1)

dbDisconnect(connection)


query1 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'Reckno64', '2019-02-31', '9/10', 'Surprisingly overhated', 'While I understand the disappointment, this was NOT a bad film. It is not as good as the first one, but I think it holds up pretty well! There is lots of fun to be had watching this from the animation to the humor, and there are still some touching scenes that show there is heart put into this film. I recommend seeing CinemaWins Everything GREAT about Incredibles 2 if you want to see why this film is still pretty decent. Only somewhat weak spot in my opinion was the main villain who was somewhat predictable, but man the animation at times truly is Incredible (pun intended)! Go see it! It was well worth my time and I enjoyed it, so I am surprised to see it get all these 1 star reviews. Far from Pixar's best but still a good flick. I know you cannot please everyone but I think this movie is terribliy overhated. That is just my opinion at least. 9 stars out of 10!')"
query_result2<- dbSendQuery(connection, query2)
dbClearResult(query_result2)
dbDisconnect(connection)


query3 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'TheLittleSongBird', '2018-07-30', '7/10', 'Falls short of super or incredible', 'While not one of my favourite Pixar films, 'The Incredibles' is still a very, very good film that has gone even higher in my estimations after a well overdue re-watch to get myself prepared for 'Incredibles 2', fantastically animated, exciting, funny, emotionally investable and ground-breaking with great characters. Expectations were high for its long awaited sequel fourteen years on, and while it is not as good a film, and what could and should have been super and incredible wasn't quite, on the most part 'Incredibles 2' was worth the wait.')"
query_result3<- dbSendQuery(connection, query3)
dbClearResult(query_result3)
dbDisconnect(connection)


query4 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'NarniaIsAwesome', '2018-10-02', '7/10', 'Incredibles 2 is... Exciting and Acceptable.', 'Incredibles 2 was probably the most anticipated movie of the year; it is hard to believe it has made 14 years since the first original. So obviously everyone was more than ready for this. The film does come through when it comes to entertaining action and comedy, with Jack-Jack, Bob, and Edna providing most of the biggest laughs. The plot is interesting, because we have got to know what happened to the Parr family. As far as the supervillain mystery, it is acceptable and somewhat entertaining, but a bit predictable and generic. The final criticism I have is that Edna definitely deserved more screen time. That being said, it is still an entertaining movie and not at all painful to watch. In conclusion, Incredibles 2 is funny, exciting, and really worth a viewing.')"
query_result4<- dbSendQuery(connection, query4)
dbClearResult(query_result4)
dbDisconnect(connection)


query5 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'Darth_Osmosis', '2018-08-03', '7/10', 'Good, but not great!', 'There is much to like here and not much that is outright wrong or bad. It is funny, fast paced, clever and overall works quite well. However, there is an ever present feeling that the first one was better.. Maybe it is cause the plot is maybe a bit too predictable and cartoonish (yeah it IS a cartoon, but still..) or that the wait between the first and this one was so long and I expected something more? It is still good, just not great!')"
query_result5<- dbSendQuery(connection, query5)
dbClearResult(query_result5)
dbDisconnect(connection)


query6 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'bornhard', '2018-06-23', '8/10', 'Predictable and old goods but in Fun New package, family entertainment. 'IIf you have seen lot of movies and read tons of comic books like myself it would seem predictable plus movie does have certain base plot elements similar to original. But do not run away yet because that is not fun part about the movie or what movie makers were focusing on, it was the family dynamics, role reversals and yes the much anticipated Jack Jack the Big bang in the small pack and all his wonderful powers which wreck havoc and yes make him most powerful member of the team. I cannot say anything else without dropping spoilers but it is a movie about a family that can be enjoyed by all families young and old together.')"
query_result6<- dbSendQuery(connection, query6)
dbClearResult(query_result6)
dbDisconnect(connection)


query7 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'abcvision', '2018-06-26', '3/10', 'There is only a first time', 'Superheros are back in vogue that's what the incredibles 2 is all about. Trying to make superheroes great again. As the family was put in hiding because they were outlawed, now comes an advocate trying to showcase the benefits of having these figures back on the street and out in the open. The movie does move slow and does not have the finesse of the first film. A few good lines but as in most sequels, that train has left the station. After a fun Incredibles 1, they had to disappoint with an Incredibles 2. Dr Wilson Trivino')"
query_result7<- dbSendQuery(connection, query7)
dbClearResult(query_result7)
dbDisconnect(connection)


query8 <- "INSERT INTO movie_content (title, reviewer, date_review, review_title, review) VALUES ('Incredibles 2', 'TheBigSick', '2018-06-18', 'Disney makes every movie a comedy', 'Under Disney, star wars becomes comedy, marvel becomes comedy, and now pixar also becomes comedy. Actually I am not a hater of comedy, but too many jokes or too much humor just slow down the pace and distract/shatter the main plot. Comedy may be a good form for cash grab, which is exactly what Disney is looking for, but is not definitely suitable for all films and should be properly controlled.')"
query_result8<- dbSendQuery(connection, query8)
dbClearResult(query_result8)
dbDisconnect(connection)


query9 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'baroncoco', '2018-10-26', '9/10', 'A BLAST, with one or two problems, BUT THE HATERS ARE NUTS!', 'The story is predictable (part of it, anyway) and the animation is a bit odd-why does everyone look sunburnt?-but everything else, and it's a lot, is brilliant. The people who hated it were likely very young for the first one, and no sequel would make them happy. They're just wrong: if only for the B stories, it's fantastic.')"
query_result9<- dbSendQuery(connection, query9)
dbClearResult(query_result9)
dbDisconnect(connection)


query10 <- "INSERT INTO movie_content (title, reviewer, date_review, rating, review_title, review) VALUES ('Incredibles 2', 'adawnclarepanton', '2018-07-22', '2/10', 'Could have waited another 14 years', 'My 14 year old daughter loved it but I was bored stiff. Nothing new. Nothing surprised me. Nothing interesting. The first one was hilarious and unexpected. This was not. Wait for it to go on TV. Save your money.')"
query_result10<- dbSendQuery(connection, query10)
dbClearResult(query_result10)
dbDisconnect(connection)

