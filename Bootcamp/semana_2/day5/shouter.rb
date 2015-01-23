require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'shouter.sqlite'
)

class User < ActiveRecord::Base
	validates_presence_of :name
	validates :password, length: { is: 20 }
	validates_format_of :handle, with: /\A@/ 
	has_many :shout

end

class Shout < ActiveRecord::Base

	validates_presence_of :message, :user, :created_at
	validates :message, length: { in: 1..200 }
	belongs_to :users
end


id=0

get '/' do
	@users_list = User.all
	@id = id 
  erb :user
end

post '/newuser' do

	id += 1
	create
  @get_name = params[:name]
  @get_handle = params[:handle]
  @get_password = params[:password]
  User = User.create(name: @get_name, handle: @get_handle, password: @get_password)
  redirect '/'
end

p user.erros.full_messages



