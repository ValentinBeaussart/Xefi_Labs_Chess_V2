class AddPointToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :point, :integer
  end
end
