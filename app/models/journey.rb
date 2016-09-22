class Journey < ApplicationRecord

  has_many :days
  belongs_to :user

end
