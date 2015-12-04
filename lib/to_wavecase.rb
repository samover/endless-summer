class String
 def to_wavecase
   self.gsub(/([A-Za-z1-9])/).with_index do |char, i|
     i.odd? ? char.upcase : char.downcase
   end
 end
end
