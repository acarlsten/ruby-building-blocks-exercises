def caesar_cipher(phrase, number = 0)

  if number > 25
    puts "You've entered a number above 25. Why would you?"
    exit
  elsif number < 0
    puts "Not supporting negative integers at this time."
    exit
  end

  alphabet = ('a'..'z').to_a
  numberbet = (0..25).to_a
  superhash = [alphabet, numberbet].transpose.to_h
  capsbet = ('A'..'Z').to_a
  capnumber = (100..125).to_a
  hash2 = [capsbet, capnumber].transpose.to_h
  hash2[" "] = 200
  hash2["."] = 201
  hash2["!"] = 202
  hash2["?"] = 203
  hash2[":"] = 204
  hash2[";"] = 205
  hash2[","] = 206 # There's bound to be a better way to add characters and whitespace

  superhash.merge!(hash2)


  precipher = phrase.split(//)
  modcipher = superhash.values_at(*precipher)
  midcipher = modcipher.map do |n|
    unless n.nil?
      n += number
      if n > 200
        n -= number
      elsif n > 125 && n < 200
        n -= 26
      elsif n > 25 && n < 100
        n -= 26
      else
        n
      end
    end
  end

  spaces = phrase.split('')


  postcipher = []
  midcipher.each do |n|
    postcipher << superhash.key(n).to_s
  end

  complete = postcipher.join
  original = spaces.join('')

  puts 'Encrypted phrase: ' + complete.to_s
  puts 'Original phrase: ' + original
end
puts "Enter a phrase."
x = gets.chomp
puts "How far to shift it? Anything from 0 to 25 is valid."
y = gets.chomp
caesar_cipher(x, y.to_i)
