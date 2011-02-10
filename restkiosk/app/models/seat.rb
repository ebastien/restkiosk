class Seat < ActiveRecord::Base
  has_one :passenger
end
