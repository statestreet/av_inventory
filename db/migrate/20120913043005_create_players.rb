class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.boolean :injured
      t.decimal :salary
      t.date :date_of_birth
      t.references :team

      t.timestamps
    end
    add_index :players, :team_id
  end
end
