class CreateTechs < ActiveRecord::Migration[5.2]
  def change
    create_table :techs do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :dependencies

      t.timestamps
    end
  end
end
