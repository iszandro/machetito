class AddColumnsToKanjis < ActiveRecord::Migration[5.2]
  def change
    add_column :kanjis, :on_yomi, :string, array: true, default: []
    add_column :kanjis, :kun_yomi, :string, array: true, default: []
    remove_column :kanjis, :readings
  end
end
