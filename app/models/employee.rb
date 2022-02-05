class Employee < ApplicationRecord
    validates :name, :job, :salary, :employment, presence: true
    validates :email, presence: true, uniqueness: true

    belongs_to :team, foreign_key: "name", :optional => true
    belongs_to :division, foreign_key: "name", :optional => true
end
