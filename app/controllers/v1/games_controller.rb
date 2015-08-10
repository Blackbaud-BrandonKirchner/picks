module V1
  class GamesController < ApplicationController
    def create
      @game = Game.new

      render json: @game, serializer: GameSerializer, root: nil
    end

    def index
      @games = Game.all

      render json: games, each_serializer: GameSerializer, root: nil
    end

    def show
      @game = Game.find(params[:id])

      render json: @game, serializer: GameSerializer, root: nil
    end
  end
end