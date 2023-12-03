module Resolvers
  class UsersResolver < Resolvers::BaseResolver

    type [Types::UserType], null: false

    argument :id, ID, required: false

    def resolve(id: nil)
      if id
        ::User.where(id: id)
      else
        ::User.all
      end
    end
  end
end
