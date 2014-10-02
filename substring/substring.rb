def substring(word, dictionary)
subs = Hash.new(0)

	dictionary.each do |substr|
		subs[substr] += 1 if word.include?(substr) 
	end
	return subs
end

test = substring("hello", ["hell", "the", "major", "he"])
puts test