class WordTranslation < ApplicationRecord
  belongs_to :word
  belongs_to :translation_word, class_name: 'Word'
end
