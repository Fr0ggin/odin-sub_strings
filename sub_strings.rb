def sub_strings (sentence, dictionary)
  # convert sentence to match against hatch
  sentence = sentence.downcase.delete("!@#$%^&*()-_=+").split(" ")
  # Make an hash of dictionary with each word a value of 0
  dict_hash = Hash.new()
  dictionary.each{|key| dict_hash[key] = 0}
  # check for each word of include in dictionary
  # if includes, take key add value +1 (default to 0) to dictionary
  sentence.each{|key| dict_hash[key] += 1}

  # filter all that has key bigger then 0 and return the new dictionary hash
  dict_hash.filter{|key, value| value > 0}
end

dictionary = ["hello","is","it","me","your","looking","for"]
p sub_strings("Hello! Is is IS IS it it me me your for", dictionary)
