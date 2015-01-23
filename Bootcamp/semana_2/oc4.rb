# OC4. IronhackLIST
                                  
# Oh, man. We are so proud of our Student class. Validated, short, compact. Is it love?

# Anyway, the thing you probably missed from SL12 is having some web in between. Some routes, some Sinatra, some ERB… so let’s do it, why not?

# You will now implement a Ironhack directory of students, that shows a list of everyone’s name, surname, birthday, a clickable link to their website, if they have programming experience or not (Yes/No) and, more importantly, ¡the number of dogs they have!

# Apart from that, you should be able to create new students through the interface, and also delete the ones which have 0 dogs (we cannot kick the others out, they have dogs!).

# Go for it!

require 'rubygems'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'

set :port, 3000
set :bind, '0.0.0.0'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'activerecord.sqlite'
)
I18n.enforce_available_locales = false # get rid of the warning

get '/' do 
  erb :students
end

class Student < ActiveRecord::Base
	def initialize
		@name = name
		@surname = surname
		@birthday = birthday
		@website = website
		@programming_experience = programming_experience
		@number_of_dogs = number_of_dogs
	end
end

post '/artist/:artist' do 
	erb :artist
end
