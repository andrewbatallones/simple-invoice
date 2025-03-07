class AuthController < ApplicationController
  # This controller will be used to handle any pages that requires an authentication
  include Authentication

  def user
    @user || Current.session.user
  end
end
