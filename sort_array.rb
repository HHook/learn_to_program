# 8.3 
# let us insert as many words in an array as we want (one word per line)
# end after nothing is inserted on an empty line (enter)
# sort inserted word alphabetically array.sort

puts "Give me a word: "
words = []

while true
  word = gets.chomp
  if word == '' # break if word.epmty?
    break
  end

    words.push(word) # words << word
end


puts "Sorteeritud sonad: "
p words.sort


