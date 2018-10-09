# spec/models/book_spec.rb

RSpec.describe Book, :type => :model do 
  subject {
    described_class.new(title:      "Hello",
                       ISBN13:     1234567891123,
                       copyright:  1992,
                       section_id: 3)
  }
    
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title"   do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a ISBN13"   do
    subject.ISBN13 = nil
    expect(subject).to_not be_valid
  end

  it "is valid without a copyright"   do
    subject.copyright = nil
    expect(subject).to be_valid
  end

  describe "Associations" do
    it "belongs to section" do
      assc = described_class.reflect_on_association(:sections)
      expect(assc.macro).to eq :belongs_to
    end
  end
end