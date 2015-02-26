class AddNumberofmenteesToMentor < ActiveRecord::Migration
  def change
    add_column :mentors, :max_mentees, :integer, :default => 0
  end
end
