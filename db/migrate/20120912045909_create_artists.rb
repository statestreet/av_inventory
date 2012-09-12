class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country
      t.string :birth
      t.string :figure
      t.string :region

      t.timestamps
    end
  end
end
