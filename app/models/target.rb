class Target < ApplicationRecord
    validates :title, :presence => true
    belongs_to :team, :optional => true #, foreign_key: "name", 
end
