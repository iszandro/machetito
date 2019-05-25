class Category < ApplicationRecord
  has_many :category_subcategories
  has_many :category_categories, class_name: 'CategorySubcategory', foreign_key: :subcategory_id
  has_many :category_words

  has_many :subcategories, through: :category_subcategories
  has_many :parents, through: :category_categories, source: :category
  has_many :words, through: :category_words

  scope :with_no_parents, -> { where.not(id: CategorySubcategory.pluck(:subcategory_id)) }
end
