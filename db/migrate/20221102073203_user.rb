class User < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :name
      t.string :email
      # Add fields that let Rails automatically keep track
      # of when users are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end