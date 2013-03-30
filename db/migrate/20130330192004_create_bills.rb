class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.text :description
      t.references :pay_method
      t.date :expires

      t.timestamps
    end
    add_index :bills, :pay_method_id
  end
end
