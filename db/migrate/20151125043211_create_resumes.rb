class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.text :objective
      t.text :skills
      t.text :experience
      t.text :education
      t.integer :user_id
      t.integer :style_id

      t.timestamps null: false
    end
  end
end
