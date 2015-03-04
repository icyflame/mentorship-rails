class AddPrefrence1ToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :preference1, :text
  end
end
