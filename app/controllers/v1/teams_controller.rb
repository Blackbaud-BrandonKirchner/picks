module V1
  class TeamsController < ApplicationController

    def create
      @team = Team.new

      render json: @team, serializer: TeamSerializer, root: nil
    end
  end
end