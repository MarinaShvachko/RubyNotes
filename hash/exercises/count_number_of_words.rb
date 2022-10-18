class CountNumberOfWords

  def get_words_count_by_lang(text)
    result = Hash.new
    words = text.split
    words.each do |word|
      if result.key? (word)
        count = result[word] += 1
        result[word] = count
      else
        result[word] = 1
      end
    end
    result
  end
end

test = CountNumberOfWords.new
puts  test.get_words_count_by_lang(text = 'php ruby php java javascript go go go')

