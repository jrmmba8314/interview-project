# spec/models/wrote_spec.rb

RSpec.describe Wrote, :type => :model do 
  describe "Associations" do
    it "belongs to books" do
      assc = described_class.reflect_on_association(:books)
      expect(assc.macro).to eq :belongs_to
    end

    it "belongs to authors" do
      assc = described_class.reflect_on_association(:authors)
      expect(assc.macro).to eq :belongs_to
    end

  end
end
