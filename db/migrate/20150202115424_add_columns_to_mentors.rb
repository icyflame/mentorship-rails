class AddColumnsToMentors < ActiveRecord::Migration
  def change
    add_column :mentors, :designation, :string
    add_column :mentors, :firm, :string
    add_column :mentors, :phone, :string
    add_column :mentors, :skypename, :string
  end
end
