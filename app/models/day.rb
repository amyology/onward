class Day < ApplicationRecord

  has_many :entries
  # has_many :photos

  belongs_to :journey

end
