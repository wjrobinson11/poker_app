class ApplicationController < ActionController::Base
  acts_as_token_authentication_handler_for User
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  respond_to :json
end
