input = 'ab'

class String
  def delete_at(index)
    self.slice(0, index) + self.slice(index + 1, self.length)
  end
end

def anagrams(string)
  return [string] if string.size == 1

  return (0...string.size).flat_map do |index|
    char = string[index]
    res = string.delete_at(index)

    res_anagrams = anagrams(res)

    res_anagrams.map { |anagram| char + anagram }
  end
end

p anagrams(input)

