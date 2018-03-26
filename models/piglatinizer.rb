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

  def piglatinize(text)
    if text.length > 1
       consonants(text) + "ay"
    else
    end


  end

end
