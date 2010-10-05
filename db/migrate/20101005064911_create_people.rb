class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :ln
      t.string :fn
      t.string :mn
      t.date :dob
      t.string :tel1
      t.integer :ptype_id1
      t.string :tel2
      t.integer :ptype_id2
      t.integer :add_id
      t.boolean :contact
      t.boolean :client
      t.boolean :tech

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
