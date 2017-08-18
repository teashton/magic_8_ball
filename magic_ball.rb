require 'colorize' # this is a gem that has been installed to allow the one coding to manipulate colors of text
 # by adding require 'colorize' you are allowing the gem to be utilized
Answer = # this is your array
  [
  'It is certain'.colorize(:blue).colorize( :background => :light_green), # each of the lines from 5 - 24 are part of the Answer array
  'yes'.colorize(:blue).colorize( :background => :light_green),           # the Answer array contains elements within [] which are separated
  'It is decidedly so'.colorize(:blue).colorize( :background => :light_green), # they are separated by a comma
  'Without a doubt'.colorize(:blue).colorize( :background => :light_green),  # because the element is a text element it is called a string
  'Yes definitely'.colorize(:blue).colorize( :background => :light_green),  # in order to be a string it needs to be in either "" or ''
  'You may rely on it'.colorize(:blue).colorize( :background => :light_green), # to adjust the text color you would add the white and purple code
  'As I see it, yes'.colorize(:blue).colorize( :background => :light_green), # this code comes directly AFTER the closing quotation
  'Most likely'.colorize(:blue).colorize( :background => :light_green), # but BEFORE the comma that separates the element from the next one
  'Outlook good'.colorize(:blue).colorize( :background => :light_green),# so an exaple of a correct array being written would look like this:
  'Signs point to yes'.colorize(:blue).colorize( :background => :light_green), # NameofArray = ['element 1'colorize code, 'element 2'colorcode, etc.]
  'Reply hazy try again'.colorize(:blue).colorize( :background => :light_yellow),  # DONT FORGET THAT YOUR ENTIRE ARRAY NEEDS TO BE CONTAINED BY []
  'Ask again later'.colorize(:blue).colorize( :background => :light_yellow), # sidenote an array can contain integers which are whole numbers
  'Better not tell you now'.colorize(:blue).colorize( :background => :light_yellow), # they can also include floats which are numbers with decimals
  'Cannot predict now'.colorize(:blue).colorize( :background => :light_yellow), # or they can contain a letter that is not contained in ''
  'Concentrate and ask again'.colorize(:blue).colorize( :background => :light_yellow), # if you do input a alpha value it will always convert it to 0
  'Probably not'.colorize(:white ).colorize( :background => :red), # so make sure you close your '' and add a , after each element.
  'My reply is no'.colorize(:white ).colorize( :background => :red),
  'My sources say no'.colorize(:white ).colorize( :background => :red),
  'Outlook not so good'.colorize(:white ).colorize( :background => :red),
  'Very doubtful'.colorize(:white ).colorize( :background => :red),
  ]

def welcome #this will bring you back to the beginning showing the instructions
  puts # each of these puts are added for aesthetics
  puts '-----------------------------' # each of these puts are added for aesthetics
  puts 'Welcome to the Magic 8 Ball!'.colorize(:light_blue )
  puts '---------------------------------------------------------------------' # each of these puts are added for aesthetics
  puts 'Type your question to get an answer, or type q to quit the program!'.colorize(:light_blue )
  puts '---------------------------------------------------------------------' # each of these puts are added for aesthetics
  puts # each of these puts are added for aesthetics
  input # this will send the user to the input method which will allow them to (see line 39-57)
end # this will close the welcome method.

def input # this begins a new method, and executes the following (see line 39-57)
  users_input = gets.strip # makes the users input a value called users_input and uses .strip to cut any extra spaces from both sides of the input
  puts # each of these puts are added for aesthetics
  if users_input.downcase == 'q' # if the user inputs the letter q or Q it will case down and exit
    exit # this will cause the script to close
  else # otherwise it will return a random answer from the array named Answer.
    puts '-----------------------' # each of these puts are added for aesthetics
    puts Answer.sample # puts Answer.sample will take a random element from the array and place it here
    puts '-----------------------' # each of these puts are added for aesthetics
  end
  if users_input == "add_answer" # this says if the user types add_answer (see line 49)
    puts 'SECRETTTTSSSSSS ENTER A NEW ANSWER!!!' # then this will appear (see line 50)
    newinput
  end
  if users_input == "print_answers" # this says if the user types "print_answers" (see line 53)
    puts Answer # then the entire array named Answers will show up in a list
    puts '-----------------------' # each of these puts are added for aesthetics
    puts 'press enter to continue' # each of these puts are added for aesthetics
    newinput
  end # this is the end of the if statement, you have to close all if else statements as well as methods.
end # this will finally close the input method

def newinput # starts a new metod called newinput
  new_answer = gets.strip # turns the users input into a value called new_answer
  if Answer.include?(new_answer) #this will not happen because of the .colorize DEBUG IF POSSIBLE *
    puts '-------------------------------' # each of these puts are added for aesthetics
    puts 'Please insert a unique answer.' # this is what will show up
    puts '-------------------------------' # each of these puts are added for aesthetics
  newinput # this will send you once again back to the beginning of the newinput method
  else # if it does not contain any of your elements found in the Answer array
    Answer << new_answer #this will add what the user typed in line 61 to your Answer array as a new element
    welcome #after sending your new answer to the Answer array, it will send you back to the welcome method on line 27 and start over
  end # this will close the if else statment under the newinput method. *REMEMBER even though we closed the if/else we still have to close the metho!
end # this will close the method newinput

def restart # this is the beginning of the restart method
  while # this says that as long as while is true
    true # this will always be true because there are no other options or inputs to change it from being true
    welcome # this will send you all the way back to the beginning to start over again
  end # this will close the while statement
end # this will close your restart method
  restart # this is the very first code that is run, it initiates the entire program by sending you to the welcome method

  # * on line 62, if Answer.include?(new_answer) this line will take your Answer arrray and
  #  run .include? which will check it to see if (new_answer) (refer to line 61)
  # contains any of the elements contained in your Answer array. If it does, it will show
  # 'Please insert a unique answer.' (continued explaination on line 67)
