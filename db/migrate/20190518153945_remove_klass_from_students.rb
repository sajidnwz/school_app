class RemoveKlassFromStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :klass, :string
  end
end
