class UserShipping < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  belongs_to :city
end
