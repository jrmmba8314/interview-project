# Create_book_table.rb

class CreateBookTable < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
     t.string     :title
     t.string     :ISBN13
     t.integer    :copyright
     t.belongs_to :section

     t.timestamps
    end
  end
end

