class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :describtion
      t.string :members
      t.string :leader

      t.timestamps
    end
  end
end
