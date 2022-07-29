require 'rails_helper'

RSpec.describe User, type: :model do
  it "returns the full_name for a user" do
    user = build(:user, first_name: "Harry", last_name: "Potter")

    expect(user.full_name).to eq "Harry Potter"
  end
end
