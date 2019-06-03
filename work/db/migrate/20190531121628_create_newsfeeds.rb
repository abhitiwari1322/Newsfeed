class CreateNewsfeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :newsfeeds do |t|
      t.string :title
      t.string :text
      t.integer :category_id
      t.timestamps
    end
  end
end
