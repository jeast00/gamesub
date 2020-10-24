class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token

    def new
    end

    def create
        if auth_hash = request.env['omniauth.auth']
            user = User.find_or_create_by_omniauth(auth_hash)
            session[:user_id] = user.id
        else
            user = User.find_by(user_name: params[:user_name])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to user_path
            else
                redirect_to login_path 
            end
        end
    end

    def destroy
        session.clear
        redirect_to login_path
    end

end