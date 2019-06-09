class GroupStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.wordable.meta['group'] == value.to_i
  end
end
