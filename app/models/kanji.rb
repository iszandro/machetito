# frozen_string_literal: true

class Kanji < ApplicationRecord
  def include?(reading)
    Array(on_yomi | kun_yomi).include?(reading)
  end
end
