class AddColumnsToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :database_id, :integer
    add_column :projects, :language_id, :integer
    add_column :projects, :category_id, :integer
  end
end
