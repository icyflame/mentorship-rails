class AddMaxMenteeNumberToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :max_mentee, :integer
  end
end
