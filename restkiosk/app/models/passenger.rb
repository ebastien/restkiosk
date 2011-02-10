class Passenger < ActiveRecord::Base
  belongs_to :booking
  belongs_to :seat
  has_many :bags
end
