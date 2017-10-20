class Day < ApplicationRecord

  has_many :entries
  # has_many :photos

  belongs_to :journey

  validates :daynumber, presence: true
  validates_uniqueness_of :daynumber, :scope => :journey_id
  validates :location, presence: true
  validates :journey_id, presence: true
  validates :public, presence: true
  
end
