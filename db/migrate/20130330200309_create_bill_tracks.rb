class CreateBillTracks < ActiveRecord::Migration
  def change
    create_table :bill_tracks do |t|
      t.references :bill
      t.date :pay_date
      t.text :observation

      t.timestamps
    end
    add_index :bill_tracks, :bill_id
  end
end
