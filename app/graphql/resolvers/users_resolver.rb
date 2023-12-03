module Resolvers
  class UsersResolver < Resolvers::BaseResolver

    type [Types::UserType], null: false

    def resolve
      ::User.all
    end
  end
end
