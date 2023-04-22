class SessionsController < ApplicationController
  def create
    # Use the access token and user information from Google to create or update the user in your application
    # ...

    # Log the user in and redirect them to an appropriate page
    session[:user_id] = @user.id
    redirect_to some_path
  end

  def destroy
    # Log the user out and redirect them to an appropriate page
    session[:user_id] = nil
    redirect_to root_path
  end
end

