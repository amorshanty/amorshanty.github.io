# OC1. The Lexiconomitron

# We are going to create an awesome class called Lexiconomitron. This class is the goddamn master when it comes to phrases, words, and this kind of stuff, and it has a Ruby interface so we can speak to IT. The only downside to this class is one thing: it loves T letters, so it devores them. If it has to return, let’s say “trigonometry”, it only gives “rigonomery” back.

# One of the methods of this Ruby interface is one called “shazam”. It takes an array of words (for example [“This”, “is”, “a”, “boring”, “test”]). With this array, it reverses the letters within the words (that is, [“sihT”, “si”, “a”, “gnirob”, “tset”]) and ends up returning the first and last. But Lexiconomitron eats T letters, so it returns [“sih, “se”].

# Another method of Lexiconomitron is called “oompa_loompa”. Also taking an array of words (boy, it loves words), lets say for example [“if”, “you”, “wanna”, “be”, “my”, “lover”], it takes the ones which size is three characters of less in the same order, so: [“if”, you”, “be”, “my”]. After passing the eat-all-t-letters filter, it’s… the same!

# The third method will be called "all_in_line". This will take an array of words and a string X, sort them from longer to shorter, and then print them all in a string, using the X string as the delimiter. For example, if we pass ["words", "are", "tremendously", "nice"] and "$" as a separator, it will print: "tremendously$words$nice$are". And yes, Lexiconomitron is still hungry and will eat all your Ts.

# The final method is called “supercounter”. Taking (as you might imagine) ¡an array of words!, it returns the number of letters, within all those words, that appear before “t” in the alphabet. For example, given [“I”, “am”, “getting”, “tired”, “of”, “your”, “words”], it would return 20.

# Using RSpec and TDD, write some tests for this class, for all three methods, exploring different scenarios and spec data.

# And remember that Lexiconomitron devores T letters!

class Lexiconomitron
	def shazam(string_arr)
	end

	def oompa_loompa(string_arr)
	end

	def all_in_line(string_arr, string)
	end

	def supercounter(string_arr)
	end
end

# TESTING

describe Lexiconomitron do
	before do 
		@locotron = Lexiconomitron.new
	end

	describe "#shazam" do
		it "Testing shazam's method for processing an array of words" do
			var = ["This", "is", "a", "boring", "test"]
			res = @locotron.shazam(var)

			expect(res).to eq(["sih", "se"])
		end
	end

	describe "#oompa_loompa" do
		it "Testing oompa_loompa's method for processing an array of words" do
			var = ["If", "you", "wanna", "be", "my", "lover"]
			res = @locotron.oompa_loompa(var)

			expect(res).to eq(["if", "you", "be", "my"])
		end
	end

	describe "#all_in_line" do
		it "Testing all_in_line's method for processing an array of words" do
			var = ["words", "are", "tremendously", "nice"]
			res = @locotron.all_in_line(var, "=]")

			expect(res).to eq("remendously=]words=]nice=]are")
		end
	end

	describe "#supercounter" do
		it "It returns the number of letters, within all those words, that appear before 't' in the alphabet" do
			var = ["I", "am", "getting", "tired", "of", "your", "words"]
			res = @locotron.supercounter(var)

			expect(res).to eq(20)
		end
	end
end