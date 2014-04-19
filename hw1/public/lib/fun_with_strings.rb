module FunWithStrings
  def palindrome?
    s = self.downcase.gsub(/\W/, "")
    return s == s.reverse
    # your code here
  end
  def count_words
    s = self.downcase.gsub(/[^a-z0-9\s]/, "").split(" ")
    count = {}
    s.each do |i|
      count[i] += 1 if count[i] != nil
      count[i] = 1 if count[i]== nil
      
    end
    return count  
    # your code here
  end
  # http://stackoverflow.com/questions/9646995/ruby-way-to-group-anagrams-in-string-array
  def anagram_groups
    s = self.split(" ")
    return s.group_by {|element| element.downcase.chars.sort}.values
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
