class AddColumnsToTech < ActiveRecord::Migration[5.2]
  def change
    remove_column :techs, :dependencies
    add_column :techs, :database, :boolean
    add_column :techs, :language, :string
    add_column :techs, :hardware, :string
  end
end
