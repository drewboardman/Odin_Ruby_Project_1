require 'readline'

  def query_user_for_info

	puts "\nPlease provide a user_string that you would like to encrypt."
	user_string = query_user_string

	puts "\nPlease provide an integer user_key."
	user_key = query_user_key

	return [user_string, user_key]
  end

  def encrypt(string, key)
  	str_array = string.split("")
  	str_array.map! { |char| caesarize(char,key)}.join
  end


private

  def query_user_string
  	user_string = ""

  	until user_string.is_a?(String) && all_letters?(user_string)
  		prompt = "Enter string or quit/exit  "
  		response = Readline.readline(prompt, true)
  		exit if ['quit', 'exit'].include?(response)
  		user_string = response
  	end

  	return user_string
  end

  def query_user_key
  	user_key = nil
  	until user_key.is_a? Integer
  		prompt = "Enter key or quit/exit  "
  		response = Readline.readline(prompt, true)
  		exit if ['quit', 'exit'].include?(response)
  		user_key = response.to_i
  	end
  	return user_key
  end

  def all_letters?(string)
  	#return true if the string entered is all letters
  	string[/[a-zA-Z\s]+/] == string
  end

  def is_upper?
  	self.upcase == self
  end

  def caesarize(char, key)
  	if char.ord + key > "z".ord
  		(char.ord + key - 26).chr
  	elsif char.ord + key > "Z".ord && char.ord <= "Z".ord
  		(char.ord + key - 26).chr
  	else
  		(char.ord + key).chr
  	end
  end

