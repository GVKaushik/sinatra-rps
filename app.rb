require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:rules)  
end

get("/rock") do
  moves = ["rock","paper","scissors"]
  @comp_move=moves.sample
  if @comp_move=="rock"
    @outcome = "tied"
  elsif @comp_move=="paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
erb(:rock)
end

get("/scissors") do
  moves = ["rock","paper","scissors"]
  @comp_move=moves.sample
  if @comp_move=="rock"
    @outcome = "lost"
  elsif @comp_move=="paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
erb(:scissors)
end

get("/paper") do
  moves = ["rock","paper","scissors"]
  @comp_move=moves.sample
  if @comp_move=="rock"
    @outcome = "lost"
  elsif @comp_move=="paper"
    @outcome = "tied"
  else
    @outcome = "won"
  end
  erb(:paper)
end
