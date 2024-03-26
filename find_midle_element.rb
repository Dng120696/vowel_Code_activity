#You need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
#The input to the function will be an array of three distinct numbers(Haskell: a tuple)

def gimee(arr)
  first_arr = arr[0]

  return 'no middle element' if arr.uniq.length % 2 == 0

  sorted_arr = arr.sort.uniq
  middle_sorted_arr = sorted_arr[sorted_arr.length / 2.floor]

  arr.uniq.each_with_index do |num,i|
    return i if num === middle_sorted_arr
  end

  # 1st try when u only find the middle of 3 element
  # if first_arr < arr[1]
  #   first_arr > arr[2] ? 0 : first_arr < arr[2] ? 1 : 2
  # else
  #   first_arr < arr[2] ? 0 : first_arr > arr[2] ? 1 : 2
  # end
end

# Example
 p gimee([2,3,1,4,9,7,5,8,4,5,6,6])    # Output: 6
p gimee([10,5,14])  # Output: 0


# Implement reverse method that takes a string as its input and returns its reverse as the output. Avoid using built-in methods that directly solve the problem.
def reverse_string(str)
  reversed = ''
  index = str.length - 1

  while index >= 0
    reversed += str[index]
    index -= 1
  end

  reversed
end

# Example
puts reverse_string("Christian")  # Output: "naitsirhC"
puts reverse_string("Nebab")  # Output: "babeN"
