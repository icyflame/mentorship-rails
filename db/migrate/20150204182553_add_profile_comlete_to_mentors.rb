class AddProfileComleteToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :complete_profile, :boolean
  end
end
