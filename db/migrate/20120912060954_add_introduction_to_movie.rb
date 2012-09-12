class AddIntroductionToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :introduction, :text
    add_column :movies, :tag, :string
  end
end
