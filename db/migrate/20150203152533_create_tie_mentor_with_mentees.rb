class CreateTieMentorWithMentees < ActiveRecord::Migration
  def change
    create_table :tie_mentor_with_mentees do |t|
      t.references :mentor, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
