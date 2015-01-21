def word_sorting(phrase)
	phrase.split(" ").sort
end

def reverse_words(phrase)
	result = []
	phrase.split(" ").each do |word| 
		result << word.reverse
	end
	result.join(" ")
end

simple_sentence = "va"
medium_sentence = "va amor"
greeting_sentence = "hola como va"

# print word_sorting(my_sentence)
# print word_sorting(simple_sentence)

p reverse_words(simple_sentence)
puts reverse_words(simple_sentence) == "av"
p reverse_words(medium_sentence)
puts reverse_words(medium_sentence) == "av roma"

