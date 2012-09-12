class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.references :artist
      t.references :user

      t.timestamps
    end
    add_index :fans, :artist_id
    add_index :fans, :user_id
  end
end
