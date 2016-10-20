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

get '/music/albums/:id/edit' do
  @album = Album.find(params[:id])
  erb(:'album/edit')
end

# Not working?
put '/music/albums/:id' do
  @album = Album.update(params)
  redirect to("/music/albums/#{params[:id]}")
end

# Not working?
delete '/music/albums/:id' do
  Album.destroy(params[:id])
  redirect to('/music/albums')
end