class CreateObjectValues < ActiveRecord::Migration
  def self.up
    create_table :object_values do |t|
      t.integer :source_id
      t.string :attrib
      t.string :object
      t.string :value
      t.timestamps
    end
  end

  def self.down
    drop_table :object_values
  end
end
