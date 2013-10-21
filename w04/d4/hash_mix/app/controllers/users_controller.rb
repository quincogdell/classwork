class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @users = User.order 'id ASC'
  end

  def create
    user = User.new(params[:user])
    if user.save
      redirect_to :back
    else
      redirect_to '/users'
    end
  end


  def show
    render :text => current_user.cats.map {|c| c.name}
  end

# this is not restful
# quick hacky example to show how easiy is is to get the current user
  def add_cat
    if current_user.present?
      current_user.cats.create(:name => "Fluffy")
      redirect_to "/users/#{current_user.id}"
    else
      flash[:error] = "You need to login before you add a cat"
      redirect_to :back
    end
  end


end
