# app_spec.rb

require File.expand_path '../spec_helper.rb', __FILE__

describe "anynines sinatra example" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response.status).to eq 200
  end

  it "should display hello world" do
    get '/'
    expect(last_response.body).to match("Hello world")
  end
end

describe 'Library Access' do

  it "should get books" do   
      get '/books'
      expect(last_response.status).to eq 200
  end

  it "should get a book" do
    get '/books/3' 
    expect(last_response.status).to eq 200
  end

  it "should get a book with author and title" do
    get '/books/3' 
    expect(last_response.body).to include "Brown"
    expect(last_response.body).to include "Vinci"
  end

  it "should get authors" do
    get '/authors' 
    expect(last_response.status).to eq 200
  end

  it "should get a author with name and title" do
    get '/authors/3' 
    expect(last_response.body).to include "Poe"
    expect(last_response.body).to include "Finance"
  end

  it "should get sections" do
    get '/sections'
    expect(last_response.status).to eq 200
  end

  it "should get a section" do
    get '/sections/3'
    expect(last_response.status).to eq 200
  end

  it "should get a section name and book title" do
    get '/sections/3'
    expect(last_response.body).to include "Travel"
    expect(last_response.body).to include "Calling"
  end
end    
