class AddSocialFieldsToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :facebook, :string
    add_column :mentors, :twitter, :string
    add_column :mentors, :linkedin, :string
  end
end
