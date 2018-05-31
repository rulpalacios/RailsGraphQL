class AddNewFieldsToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :nation, :string
    add_column :teams, :created, :string
  end
end
