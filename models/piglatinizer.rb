class PigLatinizer

  attr_reader :text

  def initialize(text="")
    @text = text.downcase
  end

  def consonants(text)
    text = text.downcase
    text_array = text.split("")
    until text_array[0].scan(/[aeiou]/) != []
      x = text_array.shift
      text_array << x
    end
    text_array.join()
  end

  def piglatinize(text)
    base = consonants(text)

  end

end
