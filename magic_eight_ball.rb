# prompt for a question
# or q for quit
# send out answer
# return to first prompt
@answer = [
  "Sorry I'm busy.",
  "Looks like it will be a bad day.",
  "Things are looking up.",
  "I don't care."
]


def question
  puts 'What is your question?'
  question = gets.strip.downcase
  result = @answer.sample
  puts "\nMagic 8 Ball says: #{result}"


  if question == "quit"
    exit(0)
  else

  end
end

def surprise
  puts "\nI promised you a surprise"
  puts 'Do you want to answer my questions now? y/n'
  reply1 = gets.strip.downcase

  if reply1 == "y" || reply1 == "Y"
    question_for_user
  else
    puts "Fine. Get outta here!"
    exit(0)
  end
end



def question_for_user

  puts "\nWhat should I eat today?"
  user_input = gets.strip
  @user_input = @answer.clone
    if @answer.include?(user_input)
      puts "I don't like that answer, try again."
      question_for_user
    elsif user_input == "quit"
      exit(0)
    else
      @user_input << user_input
      question2
    end
end


def question2
  puts 'Now, ask me a question:'
  question = gets
  result = @user_input.last
  puts "Magic 8 Ball says: #{result}"
  puts "\nDid you see what just happened there?"

  if question == "quit"
    exit(0)
  else
    other_options
  end
end

def other_options
  puts "Would you like to do more?\t
        1. Add more answers\t
        2. Reset to the original answers\t
        3. Show all possible answers\n"
  option = gets.to_i
  case option
  when 0
    puts 'Invalid option try again'
    other_options
  when 1 # needs to go somewhere
    print "Answer: "
    add = gets.strip

      if @user_input.include?(add)
        puts "That is already an answer."
        other_options
      elsif add == "quit"
        exit(0)
      else
        @user_input << add
        other_options
      end
  when 2
    puts 'Ansers are reset. Goodbye.'
    exit(0)
  when 3
    @user_input.each { |show| puts show }
  end
end




puts "\nI am Magic Eight Ball\t
      You can 'quit' anytime"
question
puts "\nAsk another question and you'll get a surprise"
question
surprise
