class CreateTechStackItems < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_stack_items do |t|
      t.references :tech_stack, foreign_key: true
      t.references :tech, foreign_key: true

      t.timestamps
    end
  end
end
