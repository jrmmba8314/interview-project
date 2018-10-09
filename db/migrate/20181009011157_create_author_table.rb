# create_author_table.rb

class CreateAuthorTable < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :fname
      t.string :lname
      
      t.timestamps
    end
  end
end

