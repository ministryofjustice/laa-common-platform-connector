class Advocate < ApplicationRecord
  belongs_to :defendant
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :organisation_name, presence: true
  validates :status, presence: true
end
