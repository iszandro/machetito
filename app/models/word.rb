class Word < ApplicationRecord
  belongs_to :wordable, polymorphic: true

  has_many :category_words
  has_many :categories, through: :category_words, as: :category

  has_many :word_translations
  has_many :translations, through: :word_translations, source: :translation_word
end
