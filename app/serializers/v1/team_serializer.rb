module V1
  class TeamSerializer < ActiveModel::Serializer
    attributes :name, :team_id

    def team_id
      object.id
    end
  end
end