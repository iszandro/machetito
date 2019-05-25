class KanjiStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.meta['kanji'] == value
  end
end
