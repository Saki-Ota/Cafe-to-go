class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def update_details
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number)
  end
end
