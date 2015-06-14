class UsersController < ApplicationController
  #def show
  #	@user = User.find(params[:id])
  #	@pins = @user.pins.order("created_at desc").page(params[:page]).per_page(9);
  #end

  def show
  	@user = User.find_by_id(params[:id])
  	if @user
  		@pins = @user.pins.order("created_at desc").page(params[:page]).per_page(9);
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end

  def home(id)
  	@user = User.find(params[:id])
  	return current_user.id
  end
end
