class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.text :name, null: false
      t.integer :insight_id

      t.timestamps
    end
  end
end
