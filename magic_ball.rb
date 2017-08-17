require 'colorize'

Answer = [
  'It is certain'.colorize(:blue).colorize(:blue),
  'It is decidedly so'.colorize(:blue),
  'Without a doubt'.colorize(:blue),
  'Yes definitely'.colorize(:blue),
  'You may rely on it'.colorize(:blue),
  'As I see it, yes'.colorize(:blue),
  'Most likely'.colorize(:blue),
  'Outlook good'.colorize(:blue),
  'Signs point to yes'.colorize(:blue),
  'Reply hazy try again'.colorize(:gold),
  'Ask again later'.colorize(:gold),
  'Better not tell you now'.colorize(:gold),
  'Cannot predict now'.colorize(:gold),
  'Concentrate and ask again'.colorize(:gold),
  'Probably not'.colorize(:red),
  'My reply is no'.colorize(:red),
  'My sources say no'.colorize(:red),
  'Outlook not so good'.colorize(:red),
  'Very doubtful'.colorize(:red),
]

def welcome
  puts 'Welcome to the Magic 8 Ball!'
  puts 'Type your question to get an answer, or type q to quit the program!'
  if gets.downcase.strip == 'q'
    exit
  end
  if gets.strip
    puts Answer.sample
  end
end
while
  true
  welcome
end
