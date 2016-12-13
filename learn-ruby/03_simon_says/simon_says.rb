#write your code here
def echo(message)
  return message
end
def shout(message)
  return message.upcase
end
def repeat(message, x=2)
  return message+(' '+message)*(x-1)
end
def start_of_word(message, x)
  return message[0..x-1]
end
def first_word(message)
  return message.split[0]
end
def titleize(message)
  message = message.capitalize
  little_words = ["and", "over", "the"]
  new_message = message.split(" ").map {|word|
    if not little_words.include?(word)
      word.capitalize
    else
      word
    end
  }
  return new_message.join(" ")
end
