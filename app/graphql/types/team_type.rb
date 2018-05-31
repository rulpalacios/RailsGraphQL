module Types
	TeamType = GraphQL::ObjectType.define do
		name 'Team'
		description 'a team'

		field :id, !types.ID
		field :name, !types.String
		field :nation, !types.String
		field :created, !types.String
	end
end