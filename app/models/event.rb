class Event < ApplicationRecord
    has_many :attendances
    has_many :persons
end
