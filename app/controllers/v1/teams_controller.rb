module V1
  class TeamsController < ApplicationController
    def create
      @team = Team.new

      render json: @team, serializer: TeamSerializer, root: nil
    end

    def index
      @teams = Team.all

      render json: @teams, each_serializer: TeamSerializer, root: nil
    end

    def show
      @team = Team.find(params[:id])

      render json: @team, serializer: TeamSerializer, root: nil
    end
  end
end