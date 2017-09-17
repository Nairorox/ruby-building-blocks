dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(sentence,dictionary)
  words = Hash.new(0)
  splitted_sentence = sentence.split(" ")
    splitted_sentence.each do |sentenceword|
        dictionary.each do |dictionaryword|
      if sentenceword.downcase.include? dictionaryword
      words[dictionaryword] += 1
      end
    end
  end
  puts words
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
