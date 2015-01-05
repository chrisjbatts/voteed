class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :overview
      t.string :description
      t.integer :upvote
      t.integer :downvote
      t.string :provider
      t.string :creator

      t.timestamps null: false
    end
  end
end
