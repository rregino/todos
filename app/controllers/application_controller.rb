class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    current_user.present?
  end

  def sign_in_as(email)
    session[:current_email] = email
    User.create(email: email)
  end

  def current_user
    # @current_user = User.create(email: session[:current_email])
    User.find_by(email: session[:current_email])
  end

end
