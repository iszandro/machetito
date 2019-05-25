class GroupStrategy
  def initialize(word)
    @word = word
  end

  def valid?(value)
    @word.meta['group'] == value
  end
end
