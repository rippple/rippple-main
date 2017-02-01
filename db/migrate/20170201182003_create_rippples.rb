class CreateRippples < ActiveRecord::Migration[5.0]
  def change
    create_table :rippples do |t|
      t.string :title
      t.text :body
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
