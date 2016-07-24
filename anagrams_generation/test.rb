require 'minitest/autorun'
require './anagram'

class TestAnagram < MiniTest::Test
  def test_anagrams
    anagrams = anagrams('abc')

    assert_instance_of Array, anagrams
    assert_equal 6, anagrams.size

    assert_includes anagrams, 'abc'
    assert_includes anagrams, 'acb'
    assert_includes anagrams, 'bac'
    assert_includes anagrams, 'bca'
    assert_includes anagrams, 'cab'
    assert_includes anagrams, 'cba'
  end
end
