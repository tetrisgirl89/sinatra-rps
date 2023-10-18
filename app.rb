require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:elephant)
end

get("/rock") do
   random = rand(1..3)
  if random == 1
they_played = "rock"
result = "tied"
  elsif random == 2
they_played = "paper"
result = "lost"
  elsif random == 3
  they_played = "scissors"
  result = "won"
end

  @outcome1 = "We played rock!" 
  @outcome2 = "They played #{they_played}!"
  @outcome3 =  "We #{result}!"

  erb(:play_rock)
end

get("/paper") do
  random = rand(1..3)
 if random == 1
they_played = "paper"
result = "tied"
 elsif random == 2
they_played = "scissors"
result = "lost"
 elsif random == 3
 they_played = "rock"
 result = "won"
end

 @outcome1 = "We played paper!" 
 @outcome2 = "They played #{they_played}!"
 @outcome3 =  "We #{result}!"

 erb(:play_paper)
end

get("/scissors") do
  random = rand(1..3)
 if random == 1
they_played = "scissors"
result = "tied"
 elsif random == 2
they_played = "rock"
result = "lost"
 elsif random == 3
 they_played = "paper"
 result = "won"
end

 @outcome1 = "We played scissors!" 
 @outcome2 = "They played #{they_played}!"
 @outcome3 =  "We #{result}!"

 erb(:play_paper)
end
