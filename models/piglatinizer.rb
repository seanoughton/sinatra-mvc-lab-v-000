class PigLatinizer

  attr_reader :text

  def initialize(text="")
    @text = text.downcase
  end

  def consonants(text)
    text_array = text.split("")
    until text_array[0].scan(/[aeiouAEIOU]/) != []
      x = text_array.shift
      text_array << x
    end
    text_array.join()
  end

  def word_begins_with_vowel?(text)
      text_array = text.split("")
      if text_array[0].scan(/[aeiouAEIOU]/) != []
        true
      else
        false
      end
  end

  def split_sentence_into_words
  end

  def piglatinize(text)
    answer = ""
    if word_begins_with_vowel?(text)
      answer = text + "way"
    else
       answer = consonants(text) + "ay"
    end
    answer

  end

end
