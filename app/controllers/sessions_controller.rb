class SessionsController < ApplicationController
  def create

    auth = request.env["omniauth.auth"]
    user = User.create_with_omniauth(auth)
    redirect_to '/login_success?user_id=' + user.id.to_s, :notice => "Signed in!"

    # user = User.find_by_provider_and_uid(auth["provider"], auth["uid"].to_s) || User.create_with_omniauth(auth)
    # session[:user_id] = user.id
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end