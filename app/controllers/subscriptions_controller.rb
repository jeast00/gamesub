class SubscriptionsController < ApplicationController

    def new
        @subscription = Subscription.new(user_id: params[:user_id])
    end

    def show

    end

    def create

    end

    def edit
        @subscription = Subscription.find(params[:id])
    end

    def update

    end

    def destroy

    end

    private

    def subscription_params
        params.require(:subscription).permit(:term, :user_id, :game_id)
    end
end
