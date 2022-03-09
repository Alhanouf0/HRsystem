class Team < ApplicationRecord
    validates :name, :presence => true
     #, foreign_key: "name", :optional => true
    has_many :employees, inverse_of: :team #, foreign_key: "name"
    has_many :targets
    # belongs_to :employee, :optional => true
    belongs_to :division, :optional => true

    accepts_nested_attributes_for :employees, :targets
    
end
