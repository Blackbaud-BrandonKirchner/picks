module V1
  class GameSerializer < ActiveModel::Serializer
    attributes :game_id, :home_team, :away_team, :time, :home_score, :away_score, :winner

    def game_id
      object.id
    end
  end
end