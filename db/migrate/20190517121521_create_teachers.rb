class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.date :join_date

      t.timestamps
    end
  end
end
