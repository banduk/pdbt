class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.references :event
      t.string :flyer
      t.integer :paying_audience
      t.decimal :gross_profit
      t.decimal :net_profit

      t.timestamps
    end
    add_index :parties, :event_id
  end
end
