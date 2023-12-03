# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :age, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # associations
    field :lines, [Types::LineType], null: true
    # field :lines, Types::LineType.connection_type, null: true

    def lines
      Loaders::AssociationLoader.for(User, :lines).load(object)
    end
  end
end
