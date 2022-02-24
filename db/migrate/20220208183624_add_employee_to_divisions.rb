class AddEmployeeToDivisions < ActiveRecord::Migration[7.0]
  def change
    add_reference :divisions, :employee #, null: false, foreign_key: true
  end
end
