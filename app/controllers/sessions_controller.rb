class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies[:url]
    else
      flash.now[:alert] = 'Are you a Guru? Verify your Email and Password please!'
      render :new
    end
  end

  def destroy
    if cookies[:_test_guru_session].destroy
      redirect_to login_path
    end
  end
end
