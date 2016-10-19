require('pry-byebug')
require_relative('../models/artist')

get '/music/artists' do
  @artists = Artist.all()
  erb(:'artist/index')
end

get '/music/artists/new' do
  erb(:'artist/new')
end

post '/music/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:'artist/create')
end

get '/music/artists/:id' do
  @artist = Artist.find(params[:id])
  erb(:'artist/show')
end