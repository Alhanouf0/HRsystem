class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      #t.belongs_to :team
      t.string :name
      t.string :email
      t.string :job
      t.float :salary
      t.string :employment
      t.references :team , index: true

      t.timestamps
    end
  end
end
