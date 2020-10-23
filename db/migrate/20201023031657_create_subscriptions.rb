class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :term
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
