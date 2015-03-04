class AddPrefrence3ToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :preference3, :text
  end
end
