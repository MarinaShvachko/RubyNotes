class CountNumberOfWords
  def get_words_count_by_lang(text)
    result = {}
    words = text.split
    words.each do |word|
      if result.key?(word)
        result[word] += 1
      else
        result[word] = 1
      end
    end
    result
  end
end

test = CountNumberOfWords.new
puts  test.get_words_count_by_lang(text = 'php ruby php java javascript go go go')
# {"php"=>2, "ruby"=>1, "java"=>1, "javascript"=>1, "go"=>3}
