This was done as part of an interview. I was asked

Can you fork the repo and run through the following tasks:

* integrate Active Record into the project utilizing sqlite
* create a model structure for a simple library of books:
  - books
  - authors
  - library sections
* add some migrations that build up the sqlite database
* add JSON RESTful endpoints to the sinatra app that return information on the library contents (book listing, book details, author listing, etc.)
* add anything that you see fit to the testing suite. (model tests, endpoint tests, etc.)

## Development Environment

* Make sure that you have [Docker](https://www.docker.com/get-started) and [Docker Compose](https://docs.docker.com/compose/install/) installed.
* Clone the repo
* Run the `build_dev.sh` script in the root directory.
* Run `docker-compose -f dcd.yml up` to bring up the dev environment.
* Run `docker-compose -f dcd.yml run web rspec` to run the test suite.
