=begin
In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, 
Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. 
It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter 
some fixed number of positions down the alphabet. 
For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. 
The method is named after Julius Caesar, who used it in his private correspondence.

There’s a video about it from Harvard’s CS50 class.

Assignment
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
Quick Tips:

You will need to remember how to convert a string into a number.
Don’t forget to wrap from z to a.
Don’t forget to keep the same case.
=end

def caesar_cipher(str, key)
	alphabet_lowercase = ('a'..'z').to_a
	alphabet_uppercase = ('A'..'Z').to_a
	key = key.to_int
	str = str.split('')
	new_str = ''

	str.each do |x|
		if alphabet_lowercase.include?(x)
			new_index = (alphabet_lowercase.index(x) + key) % 26
			new_str << alphabet_lowercase[new_index]
		elsif alphabet_uppercase.include?(x)
			new_index = (alphabet_uppercase.index(x) + key) % 26
			new_str << alphabet_uppercase[new_index]
		else
			new_str << x
		end
	end

	return new_str
end
