class AddIntroductionToArtist < ActiveRecord::Migration
  def change
    add_column :artists, :introduction, :text
    add_column :artists, :tag, :string
  end
end
