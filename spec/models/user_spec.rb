require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  describe 'validation' do
    it "should be invalid without a email" do
      expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
    end

    it "should be valid with an email" do
      expect(FactoryGirl.build(:user, email: "test@example.com")).to be_valid
    end

    it "should be invalid without a unique email" do
      expect(User.find_or_create_by(email: :email)).not_to be_valid
    end

    it "should be valid with a unique email" do
      expect(FactoryGirl.build(:user, email: "test@example.com")).to be_valid
    end
  end
end
