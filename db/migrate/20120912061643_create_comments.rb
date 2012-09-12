class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.string :comment_type
      t.string :state
      t.references :movie
      t.references :artist
      t.date :comment_date

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :movie_id
    add_index :comments, :artist_id
  end
end
