class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :name
      t.integer :passoutyear
      t.string :department
      t.string :hall
      t.string :field

      t.timestamps
    end
  end
end
