class CreateProfilesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :bio
      t.references :user, index: true, foreign_key: true
    end
  end
end
