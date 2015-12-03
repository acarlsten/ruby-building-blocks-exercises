def caesar_cipher(phrase, number = 0)
  alphabet = ('a'..'z').to_a
  numberbet = (0..25).to_a
  superhash = [alphabet, numberbet].transpose.to_h

  precipher = phrase.split('')
  precipher = superhash.values_at(*precipher)
  midcipher = precipher.map {|n| n += number}

  postcipher = []
  midcipher.each do |n|
    postcipher << superhash.key(n).to_s
  end

  complete = postcipher.join


# iterate over each letter in the precipher array and compare it to the alphabet
# array, with matches generating a .length from the same, resulting in an array
# of numbers. Add the number parameter from the method to .each of them, with a
# special rule to wrap around to 0 when it reaches 25/6 ala
#
# number.times do |x|
# if x > 25
#   x = 0
# else x += 1


  puts complete
end

caesar_cipher('zebra', 1)
