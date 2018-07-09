class CreateUserTechs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_techs do |t|
      t.references :user, foreign_key: true
      t.references :tech, foreign_key: true

      t.timestamps
    end
  end
end
