class AddPrefrence2ToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :preference2, :text
  end
end
