class Notice < ApplicationRecord
  validates :title, presence: true
  validates :notes, presence: true
end
