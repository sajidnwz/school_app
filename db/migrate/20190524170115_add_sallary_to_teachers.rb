class AddSallaryToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :sallary, :integer
  end
end
