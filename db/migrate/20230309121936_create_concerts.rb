class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.date :date
      t.string :location
      t.integer :ticketPrice
      t.integer :ticketNum
      t.time :concertTime

      t.timestamps
    end
  end
end
