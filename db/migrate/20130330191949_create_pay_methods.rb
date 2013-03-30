class CreatePayMethods < ActiveRecord::Migration
  def change
    create_table :pay_methods do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
