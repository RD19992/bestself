class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :type_id
      t.integer :category_id
      t.integer :source_user_id
      t.integer :target_user_id

      t.timestamps

    end
  end
end
