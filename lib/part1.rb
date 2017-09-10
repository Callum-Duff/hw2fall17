#A suggested way to work on your code in Cloud9
#is to have a terminal  window open and an editor window with this
#file loaded.  Make changes to this file, save them, and then
#run 'ruby part1.rb' at the command line, this will run your program with
#the specified test cases.  You may want to add additional test cases to
#make sure that you have thoroughly tested your code.
#Alternatively, if you are confident with rspec syntax, you can add additional
#tests to the spec/part1_spec.rb file to thoroughly test your
#program and test it by typing:
#'rspec spec/part1_spec.rb'
#You will need to be in the parent directory of the spec directory when
#you type this command.
# NOTE:  THE PROVIDED RSPEC TESTS ARE ONLY MINIMAL SANITY CHECKS TO INSURE
#THAT OUR AUTOMATED GRADER WILL BE ABLE TO GRADE YOUR SUBMISSION.  THEY DO
#NOT COMPREHENSIVELY TEST THE CORRECTNESS OF YOUR SOLUTION.
#Be absolutely certain that your code passess the rspec sanity checks before
#submitting it.  If it doesn't pass these sanity checks, our autrograder will
#not be able to grade it.
#
#It is up to you to add sufficient test cases to this file (or additonal rspec tests to
#the spec/part1_spec.rb file) to thoroughly test your program.
#
#When you are satisfied with your work, REMOVE THE TEST CASES and save your file.
#When you have completed all five parts of the assignment, follow the submission
#instructions specified in the assignment description to hand-in your work.

def palindrome?(str)
  #Remove non word characters and downcase the string
  tmp = str.downcase.gsub(/\W/, '')

  #If reverse is equal to normal, then you have a palindrome
  if tmp.reverse == tmp
    return true
  else
    return false
  end

end

def count_words(str)
  #Once again, downcase and remove non word characters
  wordArray = str.downcase.gsub(/[^a-z ]/,'').split(/\s/)
  wordArray.each do |x|
    if x =~ /\A[^a-z]*\z/
      wordArray.delete_at(wordArray.index(x))
    end
  end
  hashToReturn = {}
  wordArray.each { |x|
    if hashToReturn.key?(x)
      #If the hash contains the key, increment the associated value
      hashToReturn[x] += 1
    else
      #If the hash doesn't contain the key, add the key to the hash
      hashToReturn[x] = 1
    end

  }
  return hashToReturn
end


#the code below this line will test your functions. 
#You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "A man, a plan, a canal -- Panama"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end

test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"
puts test_str
word_count = count_words test_str
puts word_count

test_str = "one two three two three four three four five four five four five five five"
puts test_str
word_count = count_words test_str
puts word_count


test_str = "A man, a plan, a canal -- Panama"
puts test_str
word_count = count_words test_str
puts word_count