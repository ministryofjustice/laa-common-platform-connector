class Offence < ApplicationRecord
  validates :title, presence: true
  validates :legislation, presence: true
  validates :wording, presence: true
end
