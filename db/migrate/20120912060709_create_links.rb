class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :movie
      t.string :link_type
      t.string :url

      t.timestamps
    end
    add_index :links, :movie_id
  end
end
