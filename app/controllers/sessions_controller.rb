class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def new
        @user = User.new
    end

    def create
         @user = User.find_by(user_name: params[:user_name])
         if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path 
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end