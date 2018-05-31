class Resolvers::CreateTeam < GraphQL::Function
	# arguments passed as "args"
	argument :name, !types.String
	argument :nation, !types.String
	argument :created, !types.String

	# return type from the mutation
	type Types::TeamType

    # the mutation method
    # _obj - is parent object, which in this case is nil
    # args - are the arguments passed
    # _ctx - is the GraphQL context (which would be discussed later)

    def call(_obj, args, _ctx)
    	Team.create!(
    		name: args[:name],
    		nation: args[:nation],
    		created: args[:created],
    	)
    end
end