class SessionsController < ActionController::Base
  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, notice: "yayyyoooo"
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "adios"
  end
end