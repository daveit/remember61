class Position < ApplicationRecord
  has_many :contacts
  validates_associated :contacts
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
