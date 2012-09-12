class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.references :artist
      t.string :title
      t.date :publish_date
      t.string :company

      t.timestamps
    end
    add_index :movies, :artist_id
  end
end
