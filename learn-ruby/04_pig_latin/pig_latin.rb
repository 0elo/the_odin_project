#write your code here
def translate(word)
  vowels = ["a", "e", "i", "o", "u"]
  exceptions = ["qu"]
  new_word = word.split(" ").map {|a| a
  }
  piglatin = []
  new_word.length.times do |i|
    puts i
    a = new_word[i]
    if vowels.include?(a[0])
      piglatin[i] = a+"ay"
    else
      index = 0
      while (not vowels.include?(a[index]))
        index += 1
      end
      if a.include?(exceptions[0])
        index+=1
      end
      piglatin[i] = a[index..-1]+a[0..index-1]+"ay"
    end
  end
  return piglatin.join(" ")
end
