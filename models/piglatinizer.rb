class PigLatinizer

  attr_reader :text

  def initialize(text="")
    @text = text.downcase
  end

  def consonants(text)
    text_array = text.split("")
    until text_array[0].scan(/[aeiou]/) != []
      x = text_array.shift
      text_array << x
    end
    text_array.join()
  end

  def piglatinize(text)
    base = consonants(text)
    second_base = base + "a"
    second_base + "y"

  end

end
