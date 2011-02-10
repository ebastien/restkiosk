class CreateBags < ActiveRecord::Migration
  def self.up
    create_table :bags do |t|
      t.float :weight
      t.references :passenger
      t.timestamps
    end
  end

  def self.down
    drop_table :bags
  end
end
