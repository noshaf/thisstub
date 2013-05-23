class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
