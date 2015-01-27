require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'
enable :sessions

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'shouter.sqlite'
)

class User < ActiveRecord::Base
	validates_presence_of :name, :password, length: { minimum: 5 }
	validates_format_of :handle, with: /\A@/ 
	has_many :shout
end

class Shout < ActiveRecord::Base
	validates_presence_of :message, :user
	validates :message, length: { in: 1..200 }
	belongs_to :user
end


id=0

get '/' do
	@users_list = User.all
	@shout = Shout.all 
	@id = id 
  erb :user
end

get 'logout' do
	session.clear
	redirect '/'
end


post '/newuser' do
	id += 1
  newuser = User.new
  newuser.name = params[:name]
  newuser.handle = params[:handle]
  newuser.password = params[:password]
  
  if newuser.save
  	session[:user_id] = newuser.id
  	redirect '/shouting'
  else
  	redirect("/")
  end

end

get '/shouting' do
	@user = User.find(session[:user_id])
	@shouts = Shout.all
  erb :shout
end

post '/newshout' do
	newshout = Shout.new
	newshout.message = params[:message]
	newshout.user = User.find(session[:user_id])
	newshout.created_at = Date.today
	newshout.save
	redirect '/shouting'

end

__END__

