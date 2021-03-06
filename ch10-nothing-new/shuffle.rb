def shuffle arr
  recursive_shuffle(arr,[])
end

#Recursive shuffle, The latest dance craze.
def recursive_shuffle(unsorted_array, sorted_array)
  #sets a random number between the range of indexs currently available.
  randex = rand(0..unsorted_array.length-1)
  #moved the value with the index randex to the sorted array
  unsorted_array.each {|val| sorted_array.push(unsorted_array.delete_at(randex))}
  #repeats the recursive_shuffle until the unsorted_array is empty
  recursive_shuffle(unsorted_array, sorted_array) until unsorted_array.length == 0
  sorted_array
end
