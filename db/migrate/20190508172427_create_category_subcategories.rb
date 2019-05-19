class CreateCategorySubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :category_subcategories do |t|
      t.belongs_to :category, foreign_key: true
      t.belongs_to :subcategory, foreign_key: { to_table: :categories }

      t.timestamps

      t.index %i[category_id subcategory_id], unique: true
    end
  end
end
