class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :add1
      t.string :add2
      t.string :add3
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone1
      t.string :phone1type
      t.string :phone2
      t.string :phone2type
      t.string :phone3
      t.string :phone3type

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
