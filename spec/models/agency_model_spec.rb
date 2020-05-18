require 'rails_helper'

RSpec.describe Agency, :type => :model do
  subject {
    Agency.new(name: "Agency", billing_terms: 35, credit_rating: "Good")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
end
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a billing_terms" do
      subject.billing_terms = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a credit_rating" do
      subject.credit_rating = nil
      expect(subject).to_not be_valid
    end
  end
