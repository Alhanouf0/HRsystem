class Division < ApplicationRecord
    has_many :teams, :dependent => :destroy
    belongs_to :employee, :optional => true

end
