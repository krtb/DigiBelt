class CreateFrameworks < ActiveRecord::Migration[5.2]
  def change
    create_table :frameworks do |t|
      t.string :name
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
