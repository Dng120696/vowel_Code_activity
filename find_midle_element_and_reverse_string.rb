#You need to create a function that when provided with a triplet, returns the index of the numerical element that lies between the other two elements.
#The input to the function will be an array of three distinct numbers(Haskell: a tuple)


def gimee(arr)
  first_arr = arr[0]

  if first_arr < arr[1]
    first_arr > arr[2] ? 0 : first_arr < arr[2] ? 1 : 2
  else
    first_arr < arr[2] ? 0 : first_arr > arr[2] ? 1 : 2
  end
end

# Example
p gimee([2,3,1])    # Output: 0
p gimee([5,10,14])  # Output: 1


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
