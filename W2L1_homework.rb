# Back End 101 July 2015, Week 2 Lecture 1 Homework
# https://gist.github.com/kareemgrant/e55e56fff71bcaeb273d

# Exercise One
# Create a program that takes a word and provides a Scrabble
# score associated with that word. A lookup hash that associates
# letters with scores can be found here:
# https://gist.github.com/kareemgrant/a6ad41203c520b17e665
class Scrabble
  def score(word)
    letters = word.to_s.upcase.split(//)
    total_score = 0
    letters.each do |letter|
      total_score += scrabble_score_lookup[letter]
    end
    return total_score
  end

  def scrabble_score_lookup
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end

puts Scrabble.new.score("Antidisestablishmentarianism")