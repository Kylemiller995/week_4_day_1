require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rps.rb')

require('json')

# get '/' do
#   erb(:home)
# end

get '/play/:move1/:move2' do
  first_move = params[:move1].downcase
  second_move = params[:move2].downcase
  game = Rps.new(first_move, second_move)
  @game_result = game.play
  erb(:result)
end
