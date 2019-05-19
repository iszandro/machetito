class Word < ApplicationRecord
  belongs_to :wordable, polymorphic: true
  has_many :translations, class_name: 'WordTranslation'
end
