require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./controllers/album_controller')
require_relative('./controllers/artist_controller')

# home path

get '/music/library' do
  #show all artists and albums
  @artists = Artist.all()
  erb(:index)
end