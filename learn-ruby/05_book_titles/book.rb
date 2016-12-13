class Book
# write your code here
  attr_accessor :title

  def title
    @title.capitalize!
    little_words = ["a", "an", "the", "over", "and", "with", "to", "in", "of"]
    new_title = @title.split(" ").map {|word|
      if little_words.include?(word)
        word
      else
        word.capitalize
      end
    }
    @title = new_title.join(" ")
  end

end
