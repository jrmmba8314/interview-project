# create_bookandauthorview_view.rb

class CreateBookandauthorviewView < ActiveRecord::Migration[5.2]
  def self.up
    execute <<-SQL
      CREATE VIEW bookandauthorviews AS
      SELECT a.authors_id,
             b.fname,
             b.lname,
             a.books_id,
             c.title
      FROM wrotes a
      LEFT JOIN authors b ON a.authors_id = b.id
      LEFT JOIN books   c on a.books_id   = c.id
    SQL
  end

  def self.down
    execute <<-SQL
      DROP VIEW bookandauthorviews;
    SQL
  end
end

