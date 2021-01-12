class AddPlayedToMove < ActiveRecord::Migration[6.0]
  def change
    add_column :moves, :played, :string
  end
end
