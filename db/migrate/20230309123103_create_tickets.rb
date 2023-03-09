class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.date :date
      t.string :location
      t.integer :ticketPrice
      t.time :concertTime
      t.string :email

      t.timestamps
    end
  end
end
