# Step 1: Create a function called encode() to replace
# all the lowercase vowels in a given string with
# numbers according to the following pattern:


def encode(str)
  vowel_code = { 'a' => '1',
                 'e' => '2',
                 'i' => '3',
                 'o' => '4',
                 'u' => '5' }

  new_str = ''
  str.each_char do |s|
    if vowel_code.key?(s.downcase)
      new_str += vowel_code[s.downcase]
    else
      new_str += s
    end
  end

  new_str
end

p encode("hello")
# Output: "h2ll4"





# Step 2: Now create a function called decode() to
# turn the numbers back into vowels according to the
# same pattern shown above.

def decode(str)
  vowel_code = { 'a' => '1',
                 'e' => '2',
                 'i' => '3',
                 'o' => '4',
                 'u' => '5' }

  new_str = ''

  str.each_char do |s|
    if vowel_code.value?(s)
      new_str += vowel_code.key(s)
    else

      new_str += s
    end
  end
  new_str
end

p decode("h3 th2r2")
# Output: "hi there"
