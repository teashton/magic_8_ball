require 'colorize'

Answer = [
  'It is certain'.colorize(:blue).colorize( :background => :light_green),
  'It is decidedly so'.colorize(:blue).colorize( :background => :light_green),
  'Without a doubt'.colorize(:blue).colorize( :background => :light_green),
  'Yes definitely'.colorize(:blue).colorize( :background => :light_green),
  'You may rely on it'.colorize(:blue).colorize( :background => :light_green),
  'As I see it, yes'.colorize(:blue).colorize( :background => :light_green),
  'Most likely'.colorize(:blue).colorize( :background => :light_green),
  'Outlook good'.colorize(:blue).colorize( :background => :light_green),
  'Signs point to yes'.colorize(:blue).colorize( :background => :light_green),
  'Reply hazy try again'.colorize(:blue).colorize( :background => :light_yellow),
  'Ask again later'.colorize(:blue).colorize( :background => :light_yellow),
  'Better not tell you now'.colorize(:blue).colorize( :background => :light_yellow),
  'Cannot predict now'.colorize(:blue).colorize( :background => :light_yellow),
  'Concentrate and ask again'.colorize(:blue).colorize( :background => :light_yellow),
  'Probably not'.colorize(:white ).colorize( :background => :red),
  'My reply is no'.colorize(:white ).colorize( :background => :red),
  'My sources say no'.colorize(:white ).colorize( :background => :red),
  'Outlook not so good'.colorize(:white ).colorize( :background => :red),
  'Very doubtful'.colorize(:white ).colorize( :background => :red),
]

def welcome
  puts
  puts '-----------------------------'
  puts 'Welcome to the Magic 8 Ball!'.colorize(:light_blue )
  puts '---------------------------------------------------------------------'
  puts 'Type your question to get an answer, or type q to quit the program!'.colorize(:light_blue )
  puts '---------------------------------------------------------------------'
  puts
  input
end
def input
  users_input = gets.strip
  puts
  if users_input.downcase == 'q'
    exit
  else
    puts '-----------------------'
    puts Answer.sample
    puts '-----------------------'
  end
  restart
end
def restart
while
  true
  welcome
end
end
restart
