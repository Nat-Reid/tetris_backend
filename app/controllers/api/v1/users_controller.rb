class Api::V1::UsersController < ApplicationController
  # skip_before_action: :authorized, only: [:create]
  #
  # def profile
  #   render json: {user: UserSerializer.new(current_user)}, status: :accepted
  # end
  #
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: UserSerializer.new(@user)}, status: :created
    else
      render json: {error: 'initials must be three capital letters'}, status: :not_acceptable
    end
  end

  def show
    render json: User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:initials)
  end
end
