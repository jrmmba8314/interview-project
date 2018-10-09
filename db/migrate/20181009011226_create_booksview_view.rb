# create_booksview_view.rb

class CreateBooksviewView < ActiveRecord::Migration[5.2]
  def self.up
    execute <<-SQL
      CREATE VIEW booksviews AS
      SELECT a.id as book_id,
             title,
             ISBN13,
             copyright,
             section_id,
             name
      FROM books a
      LEFT JOIN sections b
        ON a.section_id = b.id
    SQL
  end

  def self.down
    execute <<-SQL
      DROP VIEW booksviews;
    SQL
  end
end

