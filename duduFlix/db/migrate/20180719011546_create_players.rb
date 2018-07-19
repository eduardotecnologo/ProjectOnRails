class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.time :elapsed_time
      t.references :movie
      t.references :user
      t.timestamps
    end
  end
end
