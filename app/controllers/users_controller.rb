class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    set_user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end