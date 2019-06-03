class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :shorttext

      t.timestamps
    end
    Category.create :title => "Sports"
    Category.create :title => "Music"
    Category.create :title => "Politics"
  end
end
