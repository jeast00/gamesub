class GamesController < ApplicationController

    def new
        @game = Game.new
    end

    def show

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def game_params
        params.require(:game).permit(:title, :platform)
    end
end
