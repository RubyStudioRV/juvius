class CreateWorkproducts < ActiveRecord::Migration
  def self.up
    create_table :workproducts do |t|
      t.references :user
      t.string :workname
      t.string :worktype
      t.text :description
      t.string :tehnology
      t.timestamps
    end
  end

  def self.down
    drop_table :workproducts
  end
end
