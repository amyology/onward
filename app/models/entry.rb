class Entry < ApplicationRecord

  belongs_to :day
  has_many :comments

end
