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
  hash2[";"] = 205 # There's bound to be a better way to add characters and whitespace

  superhash.merge!(hash2)


  precipher = phrase.split(//)
  modcipher = superhash.values_at(*precipher)
  midcipher = modcipher.map do |n|
    unless n.nil?
      n += number
      if n > 200
        n -= number
      elsif n >= 125 && n < 200
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

  puts complete.to_s
  puts original
end

caesar_cipher('This video shows all the differences between Photoshop CS6 and Photoshop CC 2015. Watching the entire video can be very useful for those who are still using Photoshop CS6 or older versions and wondering whether it is time to upgrade and also for those who are already using Photoshop CC 2015 but never had time to go through the new features released since CS6.
Instead of a detailed feature tour I decided to go through everything quickly covering each new feature in less than 15 seconds. To make it easier to navigate within the video I included a list in the description below. Although this list is very detailed it is still not extensive as there are many minor changes to preferences and the user interface that I won’t be covering in this video.', 20)
