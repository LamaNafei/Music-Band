class CreateConcert < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.string :time
      t.string :location
      t.date :date
      t.integer :ticketPrice
      t.integer :ticketNum

      t.timestamps
    end
  end
end
