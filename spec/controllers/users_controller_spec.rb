require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) do
    User.new(name: 'Justin', email: 'jphoenix@mailspec.com')
  end

  let(:valid_attributes) {
    { name: 'John', email: 'my_email@test.com' }
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all users as @users" do
      user = User.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:users)).to eq([user])
    end
  end
end
