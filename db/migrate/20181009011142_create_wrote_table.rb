# create_wrote_table.rb

class CreateWroteTable < ActiveRecord::Migration[5.2]
  def change
    create_table :wrotes do |t|
      t.belongs_to :books
      t.belongs_to :authors
      
      t.timestamps
    end
  end
end

