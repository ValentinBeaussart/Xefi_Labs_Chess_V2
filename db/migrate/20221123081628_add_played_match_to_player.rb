class AddPlayedMatchToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :played_match, :integer
  end
end
