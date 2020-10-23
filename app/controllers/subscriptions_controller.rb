class SubscriptionsController < ApplicationController

    def new
        @subscription = Subscription.new(user_id: params[:user_id])
    end

    def show
        @subscription = Subscription.find(params[:id])
    end

    def create
        @subscription = Subscription.new(subscription_params)

        if @subscription.save

        else
            render :new
        end
    end

    def edit
        @subscription = Subscription.find(params[:id])
    end

    def update

    end

    def destroy
        @subscription = Subscription.find(params[:id])
        @subscription.destroy
        redirect_to user_path(@user)
    end

    private

    def subscription_params
        params.require(:subscription).permit(:term, :user_id, :game_id)
    end
end
