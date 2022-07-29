class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    get_email.present?
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def get_email
    session[:current_email]
  end

end
