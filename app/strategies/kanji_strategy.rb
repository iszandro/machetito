class KanjiStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.wordable.meta['kanji'] == value
  end
end
