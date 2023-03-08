class CreateTicket < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :email
      t.string :date , foreign_key: true
      t.string :location , foreign_key: true
      t.int :price

      t.timestamps
    end
    add_column :tickets, :id, :primary_key, auto_increment: true
  end
end
