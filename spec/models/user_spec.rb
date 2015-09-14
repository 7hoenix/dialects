require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(name: "justin", email: "justin1@test.com")
  end

  it "is invalid without a name" do
    user.name = nil
    expect(user).not_to be_valid
  end
end
