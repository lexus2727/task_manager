class StaticController < ApplicationController
    layout 'sessions'

    def welcome
      if logged_in
        redirect_to assignments_path
        flash[:notice] = "You are already logged in."
      end
    
    end
end