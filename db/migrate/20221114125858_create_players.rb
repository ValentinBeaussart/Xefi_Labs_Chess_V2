class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position
      t.integer :victory
      t.integer :defeat

      t.timestamps
    end
  end
end
