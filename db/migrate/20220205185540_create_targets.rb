class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :title
      t.string :description
      t.string :start_date
      t.string :finish_date
      t.string :team
      t.string :status

      t.timestamps
    end
  end
end
