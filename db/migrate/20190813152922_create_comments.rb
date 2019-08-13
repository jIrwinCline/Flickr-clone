class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :image_id
      t.string :text_body
      t.timestamps
    end
  end
end
