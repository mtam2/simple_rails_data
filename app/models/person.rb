class Person < ApplicationRecord
    has_many :attendances
    has_many :events
end