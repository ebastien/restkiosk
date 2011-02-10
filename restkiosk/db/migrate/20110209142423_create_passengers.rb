class CreatePassengers < ActiveRecord::Migration
  def self.up
    create_table :passengers do |t|
      t.string :name
      t.boolean :authenticated
      t.references :booking
      t.references :seat
      t.timestamps
    end
  end

  def self.down
    drop_table :passengers
  end
end
