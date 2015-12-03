def caesar_cipher(phrase, number = 0)

  if number > 25
    puts "You've entered a number above 25. Why would you?"
    exit
  elsif number < 0
    puts "Not supporting negative integers at this time."
    exit
  end

  alphabet = ('a'..'z').to_a
  capsbet = ('A'..'Z').to_a
  numberbet = (0..25).to_a
  superhash = [alphabet, numberbet].transpose.to_h # rewrite so the number is key, with two values (a, A) etc

  precipher = phrase.downcase.split(//)
  precipher = superhash.values_at(*precipher)
  midcipher = precipher.map do |n|
    unless n.nil?
      n += number
      if n > 25
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

  puts complete
  puts original
  puts postcipher
end

caesar_cipher('Hello there zebra!', 25)
