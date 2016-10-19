require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')

get '/music/albums' do
  @albums = Album.all()
  erb(:'album/index')
end

get '/music/albums/new' do
  erb(:'album/new')
end

post '/music/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'album/create')
end

get '/music/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'album/show')
end