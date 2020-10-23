class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by(user_name: params[:user][:user_name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to @user
        else
            render :new 
        end
    end

    def destroy
        session.delete :user_name
        redirect_to login_path
    end

end