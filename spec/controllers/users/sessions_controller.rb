require 'rails_helper'

describe Users::SessionsController, type: :request do
  before(:each) do
    @password = 'password'
    @user = User.create(email: 'test@insta.com', password: @password)
  end

  it "should allow user to authenticate with json" do
    post '/users/sign_in', {user: {email: @user.email, password: @password}, :format => 'json'}
    expect(JSON.parse(response.body)["authentication_token"]).to eq(@user.authentication_token)
  end
end
