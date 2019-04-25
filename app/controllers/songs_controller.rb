class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/new' do
    @genres = Genre.all
    erb :'songs/new'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end

  post '/songs' do
    artist = Artist.find_or_create_by(name: params['Artist Name'])
    song = Song.create(name: params['Name'], artist: artist)
    params['genres'].map(&:to_i).each do |genre_id|
      genre = Genre.find(genre_id)
      song.genres << genre
    end
    redirect "/songs/#{song.slug}"
  end
end
