# models.rb

class Book < ActiveRecord::Base
  validates :title, :ISBN13, :section_id, presence: true
  validates :ISBN13, uniqueness: true
  validates :ISBN13, length: { is: 13 }
  validates :ISBN13, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_and_belongs_to_many :authors, :join_table => :wrotes
  belongs_to :sections

  accepts_nested_attributes_for :sections
end

class Wrote < ActiveRecord::Base
  validates :authors_id, :books_id, presence: true
  belongs_to :authors
  belongs_to :books
end

class Author < ActiveRecord::Base
  validates :fname, :lname, presence: true
  has_and_belongs_to_many :books, :join_table => :wrotes, dependent: :destroy
end

class Section < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :books, dependent: :destroy
end

class Booksview < ActiveRecord::Base
  belongs_to :books
  belongs_to :sections
end

class Bookandauthorview < ActiveRecord::Base
  belongs_to :wrotes
  belongs_to :authors
  belongs_to :books
end

