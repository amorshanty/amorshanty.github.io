# SL9. Spotinatra Premium

# Now we will add some features to our awesome and shiny Spotinatra web app (exercise SL6, if you remember from today):
# * Instead of adding a song through "curl", we will create a form in the "/" route that allows us to create new song.
# * Instead of just printing the songs as a string, we will use an ERB template to do that, using the HTML <ul> and <li> elements.
# * Instead of just printing “ENOUGH”, we will use an ERB template to print an <h1> with “enough”
# * Instead of saving the songs in an array, we will create a SongList class that has one “add_song” method, which will take an author and a
# name as parameters, and add the information to the song list.

# Also, we will have a couple more features:
# * We will have a dynamic route, like "/artists/:artist" that, for the "artist" parameter, prints all the songs that we have from him/her in our songs list.

# * We will have a "/search" route that, with a "term" parameter, prints all the artists and the songs which match the "term" parameter.

# Enjoy!


require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

songs = []

get '/' do 
  @songs = songs
  erb :song
end

post '/add_songs' do
	if songs.size < 5
	  @get_song = params[:name]
	  @get_artist = params[:artist]
	  songs << [@get_song, @get_artist]
	  redirect '/'
	else 
		redirect '/enough'
	end

end

get '/enough' do 
	erb :enough
end

post '/artist/:artist' do 
	erb :artist
end

post '/search' do
		@songs.select { |song| song == params[:term] }
end
