class CreatePaySheets < ActiveRecord::Migration
  def change
    create_table :pay_sheets do |t|
      t.decimal :amount
      t.date :date
      t.text :observation

      t.timestamps
    end
  end
end
