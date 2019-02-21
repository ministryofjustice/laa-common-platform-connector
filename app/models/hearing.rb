class Hearing < ApplicationRecord
  has_and_belongs_to_many :defendants
  validates :court_name, presence: true
  validates :description, presence: true
end
