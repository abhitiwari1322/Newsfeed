class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    drop_table :categories
    create_table :categories do |t|
      t.string :title
      t.string :shorttext

      t.timestamps
    end
    Category.create :title => "music", :shorttext => "music is life"
    Category.create :title => "sports", :shorttext => "sports charge life"
    Category.create :title => "travel", :shorttext => "keep travelling keep learning"
    Category.create :title => "politics", :shorttext => "improvise modern politics"
  end
end
