class Defendant < ApplicationRecord
  has_and_belongs_to_many :hearings
  has_many :offences
  belongs_to :advocate
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_of_birth, presence: true
end
