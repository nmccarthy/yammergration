class SessionsController < ApplicationController
  def create
    raise env["omniauth.auth"].to_yaml
    # user = User.from_omniauth(env["omniauth.auth"])
    # user.full_auth_blob = env["omniauth.auth"].to_json
    # user.save!
    # redirect_to '/facebook/auth_results?user_id=' + user.id.to_s
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end