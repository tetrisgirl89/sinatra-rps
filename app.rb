require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
   random= rand(1..3)
  if random = 1
they_played = "rock"
result = "tied"
  elsif random = 2
hey_played = "paper"
result = "lost"
  elsif random = 2
  hey_played = "scissors"
  result = "won"


  @outcome = "We played rock! They played #{they_played}! We #{result}!" 

  erb(:play_rock)
end
