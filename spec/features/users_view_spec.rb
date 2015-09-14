require 'spec_helper'

RSpec.describe "the users view", type: :feature do

  let(:justin) { User.create(name: "justin", email: "justin1@test.com") }
  let(:sally) { User.create(name: "sally", email: "sally1@test.com") }

  before(:each) do
  end

  it "shows the users" do
    skip
    visit users_path
    save_and_open_page
    expect(page).to have_content("justin")
    expect(page).to have_content("sally")
  end
end
