class CreateMoneyOrders < ActiveRecord::Migration
  def change
    create_table :money_orders do |t|
      t.integer :amount
      t.string :number
      t.string :intendee
      t.string :card_from
      t.string :card_to
      t.string :purchase_date
      t.string :load_date
      t.text :notes

      t.timestamps
    end
  end
end
