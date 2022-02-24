class Division < ApplicationRecord
    belongs_to :team, :optional => true
    belongs_to :employee, :optional => true
end
