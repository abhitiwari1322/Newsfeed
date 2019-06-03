class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :shortText

      t.timestamps
    end
      Category.create :title => "Mathematics"
      Category.create :title  => "Chemistry"
      Category.create :title  => "Psychology"
      Category.create :title => "Geography"
  end
end
