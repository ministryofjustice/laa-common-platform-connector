class Hearing < ApplicationRecord
  validates :court_name, presence: true
  validates :description, presence: true
end
