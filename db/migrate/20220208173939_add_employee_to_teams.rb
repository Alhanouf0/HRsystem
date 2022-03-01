class AddEmployeeToTeams < ActiveRecord::Migration[7.0]
  def change
    add_reference :teams, :employee
  end
end
