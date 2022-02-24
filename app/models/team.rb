class Team < ApplicationRecord
    validates :name, :presence => true
    has_one :division #, foreign_key: "name", :optional => true
    has_many :employees, inverse_of: :team #, foreign_key: "name"
    has_many :targets
    belongs_to :employee, :optional => true
    
end
