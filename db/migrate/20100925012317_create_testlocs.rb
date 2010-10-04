class CreateTestlocs < ActiveRecord::Migration
  def self.up
    create_table :testlocs do |t|
      t.string :name
      t.integer :address_id
      t.string :contactrole
      t.integer :person_id
      t.string :localphone

      t.timestamps
    end
  end

  def self.down
    drop_table :testlocs
  end
end
