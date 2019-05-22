class AddKlassIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :klass_id, :integer
  end
end
