class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.timestamps null: false
    end
    Subject.create :name => "Physics"
    Subject.create :name => "Maths"
    Subject.create :name => "Chemistry"
    Subject.create :name => "English"
    Subject.create :name => "Hindi"
  end
end
