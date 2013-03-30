class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :event_type
      t.text :description
      t.text :testimonial
      t.text :report
      t.date :date

      t.timestamps
    end
    add_index :events, :event_type_id
  end
end
