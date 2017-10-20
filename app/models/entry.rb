class Entry < ApplicationRecord

  belongs_to :day
  has_many :comments

  validates :text, presence: true
  validates :day_id, presence: true
  validates :public, presence: true
  
end
