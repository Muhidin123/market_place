class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :category
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
