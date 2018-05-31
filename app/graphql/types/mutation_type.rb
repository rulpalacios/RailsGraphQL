Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createTeam, function: Resolvers::CreateTeam.new
  field :deleteTeam, function: Resolvers::DeleteTeam.new
end
