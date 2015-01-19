#This is very simple. Implement a Blog class where you can add Post objects. 
#Each post will have a title, a date and a text. Then add a front_page method at Blog 
#that returns the front page of the blog in the following format:

class	Blog
	def initialize
		@posts = []
	end

	def front_page 
		@posts.each {|item|
			if item.is_sponsered 
				puts("******" + item.title + "******") 
			else	
			puts item.title
			end
			puts("*" * 10)
			puts item.text
		}
	end

	def add_post(post)
		@posts << post
	end
end

class Post
	attr_reader :title
	attr_reader :date
	attr_reader :text
	attr_reader :is_sponsered
	def initialize (title, date, text, is_sponsered = true)
		@title = title
		@date = date
		@text = text
		@is_sponsered = is_sponsered
	end
end

blog = Blog.new
blog.add_post(Post.new("First Post", "12/1/2015", "Lorem ipsum dolor"))
blog.add_post(Post.new("Second Post", "12/1/2015", "Lorem ipsum dolor", false))
blog.add_post(Post.new("Third Post", "12/1/2015", "Lorem ipsum dolor"))
blog.front_page