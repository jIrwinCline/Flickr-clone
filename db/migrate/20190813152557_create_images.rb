class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :comments
      t.integer :favorites
      t.integer :profile_id
      # t.integer :other_users_id

      t.timestamps
    end
  end
end
