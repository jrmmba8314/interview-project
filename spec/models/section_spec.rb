# spec/models/section_spec.rb

RSpec.describe Section, :type => :model do 
  subject {
    described_class.new(name: "Hello")
  }
    
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name"   do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it "delete only if no books" do
      assc = described_class.reflect_on_association(:books)
      expect(assc.options[:dependent]).to eq :destroy
    end
  end

end