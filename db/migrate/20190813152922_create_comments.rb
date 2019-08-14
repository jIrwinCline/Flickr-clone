class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :email
      t.integer :user_id
      t.integer :image_id
      t.string :text_body
      t.timestamps
    end
  end
end
