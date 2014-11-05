class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  USERS = { "admin" => Rails.configuration.admin_password }

  def list
    @issues = Issue.all
  end;

  private
      def authenticate
        authenticate_or_request_with_http_digest do |username|
          loggin = USERS[username]
          if !loggin.nil?
            session[:is_logged_in] = true;
          end
          loggin
        end
      end
end

