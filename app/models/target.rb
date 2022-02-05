class Target < ApplicationRecord
    belongs_to :team, foreign_key: "name", :optional => true
end
