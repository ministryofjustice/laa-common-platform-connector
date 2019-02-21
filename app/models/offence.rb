class Offence < ApplicationRecord
  belongs_to :defendant
  validates :title, presence: true
  validates :legislation, presence: true
  validates :wording, presence: true
end
