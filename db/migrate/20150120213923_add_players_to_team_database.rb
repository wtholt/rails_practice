class AddPlayersToTeamDatabase < ActiveRecord::Migration
  def change
  	add_column :players, :name, :string
  	add_column :players, :position, :string
  	add_column :players, :age, :string
  	add_column :players, :nationality, :string
  end
end
