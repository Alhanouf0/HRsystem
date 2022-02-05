class Division < ApplicationRecord
    has_many :team
    has_one :employee
end
