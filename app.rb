require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'json'
require 'sinatra/activerecord'
require './models'

set :bind, '0.0.0.0'
set :port, '8080'
set :database, "sqlite3:library.sqlite3" 

get '/' do
  output = "Hello world! Version 3. Now with test-suite! </br>"
  env_string = JSON.pretty_generate(ENV.to_a).gsub!("\n",'</br>')
  output += "Environment: </br> #{env_string} </br>"
  output
end

get '/books' do
  output = Booksview.all.to_json
  output += Bookandauthorview.all.to_json
  output
end

get '/books/:id' do
  output = Booksview.where(["book_id = " + params[:id].to_s]).to_json
  output += Bookandauthorview.where(["books_id = " + params[:id].to_s]).to_json
  output
end

get '/authors' do
  Author.all.to_json
end

get '/authors/:id' do
    Bookandauthorview.where(["authors_id = " + params[:id].to_s]).to_json
end

get '/sections' do
  Section.all.to_json
end

get '/sections/:id' do
  Booksview.where(["section_id = " + params[:id].to_s]).to_json
end
