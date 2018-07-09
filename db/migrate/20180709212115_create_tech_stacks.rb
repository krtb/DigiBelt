class CreateTechStacks < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_stacks do |t|
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
