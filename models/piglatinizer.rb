class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def word_seperate
    words = text.split(" ")
  end



end
