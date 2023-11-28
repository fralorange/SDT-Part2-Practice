class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.datetime :departure_date
      t.datetime :arrival_date
      t.string :origin
      t.string :destination
      t.decimal :price

      t.timestamps
    end
  end
end
