class SessionsController < ApplicationController

# new
  # this will give you a form to login
    # email
    # password

    def new

    end
#create
  # actually store the session

  def create
    # binding.pry
    # first I need to find the user with the given email address

    input_password = params[:password] #password user typed in on the login screen
    #user = User.where(email: params[:email]).first
    user = User.find_by_email(params[:email]) # crazy meta magic
    if user.nil?
      flash[:error] = "Unfortunately, the email #{params[:email]} does not exist"
      redirect_to "/sessions/new"
      return
    end

    # check the password on the existing db entry

    # do the passwords match?

    # if they match

    if input_password == user.password
      session[:user_id] = user.id
      flash[:notice] = "You have successfully logged in #{user.email}"
    else
      flash[:notice] = "Unfortunately you typed in the wrong password..."
    end

      redirect_to '/'
  end


# destroy
  # actually removes the userid from the session
    #session[:user_id] = nil

  def destroy
    session[:user_id] = nil
    redirect_to :back

  end




end
