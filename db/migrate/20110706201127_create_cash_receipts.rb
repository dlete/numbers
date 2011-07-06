class CreateCashReceipts < ActiveRecord::Migration
  def self.up
    create_table :cash_receipts do |t|
      t.date :date
      t.string :concept
      t.decimal :amount
      t.references :account
      t.boolean :posted

      t.timestamps
    end
  end

  def self.down
    drop_table :cash_receipts
  end
end
