# spec/models/author_spec.rb

RSpec.describe Author, :type => :model do 
  subject {
    described_class.new(fname: "Hello",
                       lname: "World")
  }
    
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a fname"   do
    subject.fname = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a lname"   do
    subject.lname = nil
    expect(subject).to_not be_valid
  end
end
