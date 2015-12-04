class String
 def to_wavecase
  result = self.downcase.split(' ').map do |word|  # => ["endle5s", "5ummer"]
    word.chars.map.with_index do |char, index|     # => #<Enumerator: ["e", "n", "d", "l", "e", "5", "s"]:map>, #<Enumerator: ["5", "u", "m", "m", "e", "r"]:map>
       index.odd? ? char.upcase : char             # => "e", "N", "d", "L", "e", "5", "s", "5", "U", "m", "M", "e", "R"
    end.join                                       # => "eNdLe5s", "5UmMeR"
  end                                              # => ["eNdLe5s", "5UmMeR"]

  result.map.with_index do |word, index|                              # => #<Enumerator: ["eNdLe5s", "5UmMeR"]:map>
    unless index == 0                                                 # => true, false
    p word[0] >= 'a'                                                  # => false
    p result[index-1][-1] >= 'a'                                      # => true
      word.swapcase! if word[0] >= 'a' && result[index-1][-1] >= 'a'  # => nil
      word.swapcase! if word[0] <= 'Z' && result[index-1][-1] <= 'Z'  # => nil
      word.swapcase! if word[0] < 'A'                                 # => "5uMmEr"
    end                                                               # => nil, "5uMmEr"
    word                                                              # => "eNdLe5s", "5uMmEr"
  end.join(' ')                                                       # => "eNdLe5s 5uMmEr"
 end
end
