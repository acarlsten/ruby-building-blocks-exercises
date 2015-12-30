def substrings(text, dictionary)
  result = Hash.new
  text.downcase!
  dictionary.each do |dictword|
    if text.include?(dictword)
      x = text.scan(dictword).length
      result.store(dictword, x)
    end
  end
  result
end

dictionary = ["below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
