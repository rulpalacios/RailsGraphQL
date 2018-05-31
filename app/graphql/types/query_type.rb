Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  
  # Index
  field :teams, types[Types::TeamType ] do
    description 'List of soccer teams'
    resolve ->(obj, args, ctx) {
      Team.all
    }
  end

  # Show
  field :team, Types::TeamType do
    description 'Soccer Team'
    argument :id, types.ID
    resolve ->(obj, args, ctx) {
      Team.find(args[:id])
    }
  end
  
end
