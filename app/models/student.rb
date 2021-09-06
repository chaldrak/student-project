class Student < ApplicationRecord
    validates :matricule, uniqueness: true
end
