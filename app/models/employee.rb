class Employee < ActiveRecord::Base
  has_one :designation
  validates :name , presence:true
  validates :badge_id , presence: true
end
