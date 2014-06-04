class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :manufacturer
      t.string :last4
      t.timestamp :date
      t.string :purchase_date
      t.string :load_date
      t.integer :amount
      t.boolean :bonus
      t.string :card_to
      t.string :store_purchased
      t.float :fee
      t.string :portal
      t.text :notes
      t.string :card_from

      t.timestamps
    end
  end
end
