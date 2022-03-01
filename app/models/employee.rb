class Employee < ApplicationRecord
    validates :name, :job, :salary, :employment, presence: true
    validates :email, presence: true, uniqueness: true

    belongs_to :team ,:optional => true#, inverse_of: :employee #, :optional => true 
    has_one :division #, foreign_key: "name", :optional => true
    has_one :team

    
end
