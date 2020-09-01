class Person < ApplicationRecord
  belongs_to :User
  belongs_to :Neighborhood
  belongs_to :City
end
