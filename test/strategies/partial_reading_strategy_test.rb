# frozen_string_literal: true

require 'test_helper'

class PartialReadingStrategyTest < ActiveSupport::TestCase
  test 'is valid when value is included in on yomi reading' do
    assert PartialReadingStrategy.new(words(:one_kanji)).valid?('いち')
  end

  test 'is valid when value is included in kun yomi reading' do
    assert PartialReadingStrategy.new(words(:one_kanji)).valid?('ひと')
  end

  test 'is invalid when values is not included in any reading' do
    refute PartialReadingStrategy.new(words(:one_kanji)).valid?(nil)
    refute PartialReadingStrategy.new(words(:one_kanji)).valid?('foo')
    refute PartialReadingStrategy.new(words(:one_kanji)).valid?(1)
    refute PartialReadingStrategy.new(words(:one_kanji)).valid?(true)
  end
end
