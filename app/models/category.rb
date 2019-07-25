class Category < ApplicationRecord
  has_many :category_words, dependent: :delete_all
  has_many :category_exercises, dependent: :delete_all

  has_many :words, through: :category_words
  has_many :exercises, through: :category_exercises
  belongs_to :parent, class_name: 'Category'
  has_many :subcategories, class_name: 'Category', foreign_key: :parent_id

  scope :with_no_parents, -> { where(parent_id: nil) }
end
