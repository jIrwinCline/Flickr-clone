class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|

      t.string :caption
      t.string :email
      t.integer :favorites
      t.integer :user_id
      # t.integer :other_users_id

      t.timestamps
    end
  end
end
