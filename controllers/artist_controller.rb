require('pry-byebug')
require_relative('../models/artist')
require_relative('../models/album')

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

get '/music/artists/:id/edit' do
  @artist = Artist.find(params[:id])
  erb(:'artist/edit')
end

put '/music/artists/:id' do
  @artist = Artist.update(params)
  redirect to("/music/artists/#{params[:id]}")
end
# why double quotes needed in redirect?

delete '/music/artists/:id' do
  @artist = Artist.destroy(params[:id])
  redirect to('/music/artists')
end