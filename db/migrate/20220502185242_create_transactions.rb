class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :invoice
      t.string :credit_card_number
      t.string :credit_card_exp_date
      t.integer :result

      t.timestamps
    end
  end
end
