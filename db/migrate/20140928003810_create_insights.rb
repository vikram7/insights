class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      t.text :body, null: false
      t.integer :tag_id
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
