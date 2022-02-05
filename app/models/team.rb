class Team < ApplicationRecord
    validates :name, :presence => true
    belongs_to :division , foreign_key: "name", :optional => true
    has_many :employee
    has_many :targets
end
