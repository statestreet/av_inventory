class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :attr1
      t.string :attr2

      t.timestamps
    end
  end
end
