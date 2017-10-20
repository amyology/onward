class Journey < ApplicationRecord

  has_many :days
  # belongs_to :user

  validates :place, presence: true
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :user_id, presence: true
  validates :public, presence: true
  
end
