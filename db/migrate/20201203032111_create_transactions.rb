class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.text :review
      t.integer :rating
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
