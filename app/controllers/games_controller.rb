class GamesController < ApplicationController

    def new
        @game = Game.new
    end

    def show
        @game = Game.find(params[:id])
    end

    def create
        @game = Game.new(game_params)
        
        if @game.save

        else
            render :new
        end
    end

    def edit
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])

        if @game.update(game_params)
        
        else
            render :edit
        end
    end

    def destroy
        @game = Game.find(params[:id])
        @game.destroy
    end

    private

    def game_params
        params.require(:game).permit(:title, :platform)
    end
end
