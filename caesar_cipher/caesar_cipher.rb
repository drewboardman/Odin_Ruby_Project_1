#!/usr/bin/env ruby

require_relative('functions')

puts "\n*** CAESAR CIPHER *** "
puts "Creates a cipher based on a method by Julius Caesar."
puts "Enter a user_string and an integer. The user_string will be mutated"
puts "by shifted each char by the integer value."

user_string, user_key = query_user_for_info

puts user_string
puts user_key

converted_string = encrypt(user_string, user_key)
puts "Your ciphered string is: "
puts converted_string