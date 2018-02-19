# So, we want to sort an array of words, and we know how to find out 
# which of two words comes first in the dictionary (using <).

# keep two more lists around: one will be our list of already-sorted words, and the other will
# be our list of still-unsorted words. 

# We’ll take our list of words, find the “smallest” word (that is, the word that would come first 
# in the dictionary), and stick it at the end of the already-sorted list. 
# All of the other words go into the still-unsorted list. 

# Then you do the same thing again but using the stillunsorted list instead of your original list: 
# find the smallest word, move it to the sorted list, and move the rest to the unsorted list. 
# Keep going until your still-unsorted list is empty.


def sort arr # This "wraps" recursive_sort.
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted 
  end

  smallest = unsorted.pop
  p 'smallest now is: '+ smallest +'.'
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      still_unsorted.push smallest
      p "#{tested_object.upcase} on smallest vaiksem: "
      p still_unsorted 
      smallest = tested_object
    else
      still_unsorted.push tested_object
      p "#{tested_object.upcase} on smallest suurem: "
      p still_unsorted
    end
  end

  # Now smallest points to the smallest element that unsroted_array had,
  # and all the rest is still in still_unsorted array
  p "---SORTED list smallest: #{smallest.upcase}"
  sorted.push smallest


  recursive_sort still_unsorted, sorted
end

puts(sort(['can', 'feel', 'singing', 'like', 'A', 'can', 'raha']))
