class AddressesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @address = Address.find(params[:user_id])
  end
end
