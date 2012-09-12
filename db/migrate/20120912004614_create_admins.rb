class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :state
      t.string :type
      t.string :email

      t.timestamps
    end
  end
end
