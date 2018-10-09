# seeds.rb

fiction    = Section.create(name: 'Fiction')
technology = Section.create(name: 'Technology')
travel     = Section.create(name: 'Travel')
business   = Section.create(name: 'Business')
religion   = Section.create(name: 'Religion')

john   = Author.create(fname: 'John',   lname: 'Mitchell')
dan    = Author.create(fname: 'Dan',    lname: 'Brown')
jerry  = Author.create(fname: 'Jerry',  lname: 'Poe')
wells  = Author.create(fname: 'Wells',  lname: 'Teague')
george = Author.create(fname: 'George', lname: 'Gallinger')
ian    = Author.create(fname: 'Ian',    lname: 'Stewart')

flatterland = Book.create(title:      'Flatterland', 
                          ISBN13:     9780738206752 ,
                          copyright:  2001, 
                          section_id: fiction.id)

digital = Book.create(title:      'Digital Fortess', 
                      ISBN13:     9788489367012,
                      copyright:  2007,
                      section_id: fiction.id)

code = Book.create(title:      'The Da Vinci Code', 
                   ISBN13:     9780307474278,
                   copyright:  2009,
                   section_id: fiction.id)

finance = Book.create(title: 'Essentials of Finance', 
                      ISBN13: 1314241651234,
                      section_id: business.id)

texas = Book.create(title:      'Calling Texas Home', 
                    ISBN13:     1885171382134,
                    copyright:  2000,
                    section_id: travel.id)

Wrote.create(books_id: flatterland.id, authors_id: ian.id)
Wrote.create(books_id: digital.id,     authors_id: dan.id)
Wrote.create(books_id: code.id,        authors_id: dan.id)
Wrote.create(books_id: finance.id,     authors_id: george.id)
Wrote.create(books_id: finance.id,     authors_id: jerry.id)
Wrote.create(books_id: texas.id,       authors_id: wells.id)

