class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string  :name
      t.text    :description
      t.string  :type
      t.integer :status
      t.timestamps
    end
  end
end
