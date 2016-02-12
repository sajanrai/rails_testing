class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :faculty
      t.integer :students
      t.boolean :sex
      t.date :dob
      t.datetime :hour
      t.time :more

      t.timestamps null: false
    end
  end
end
