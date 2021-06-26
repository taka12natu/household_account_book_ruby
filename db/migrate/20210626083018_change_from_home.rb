class ChangeFromHome < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :category_id, :integer
    add_column :homes, :price, :integer
    remove_column :homes, :title
  end
end
