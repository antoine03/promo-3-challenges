require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  letters = []
  grid_size.times { letters << ('A'..'Z').to_a.sample }
  letters

end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  hash = {}

  open(api_url) do |stream|
    hash = JSON.parse(stream.read)
end

  if hash["Error"] == "NoTranslation"
  hash_result = {
    time: end_time - start_time,
    translation: nil,
    score: 0,
    message: "not an english word"
  }

