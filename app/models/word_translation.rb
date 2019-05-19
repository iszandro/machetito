class WordTranslation < ApplicationRecord
  belongs_to :word
  belongs_to :translation_word
end
