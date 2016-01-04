dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dict)
	count = 0
	hash = {}
	words = input.downcase.split(" ")
	dict.each do |search|
		words.each do |word|
			count += 1 if (word.include? search)
		end
		hash[search] = count if count > 0
		count = 0
	end
	puts hash
end

puts "enter a word or phrase"
input = gets.chomp

substrings(input, dictionary)