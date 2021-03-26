class ApplicationController < ActionController::Base
  include SessionsHelper

  private

    # Confirms a logged-in user.
    # @labels confirmloggedinuser
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
