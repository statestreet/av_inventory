class CreateAritists < ActiveRecord::Migration
  def change
    create_table :aritists do |t|
      t.string :name
      t.string :country
      t.string :birth
      t.string :3w
      t.string :region

      t.timestamps
    end
  end
end
