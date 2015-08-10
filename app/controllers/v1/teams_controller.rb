module V1
  class TeamsController < ApplicationController

    def create
      @team = Team.new

      render json: @team, serializer: TeamSerializer, root: nil
    end

    def index
      render json Team.all, serializer: TeamSerializer, root: nil
    end

    def show
      @team = Team.find(id)
      render @team, serializer: TeamSerializer, root: nil
    end
  end
end