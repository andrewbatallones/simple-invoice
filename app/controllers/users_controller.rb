class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to :root
    else
      puts @user.errors.messages
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email_address,
      :password
    )
  end
end
