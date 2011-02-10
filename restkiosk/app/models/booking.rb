class Booking < ActiveRecord::Base
  has_many :passengers
  
  def authenticated?
    self.passengers.all? { |pax| pax.authenticated? }
  end
  
  def identities
    self.passengers.where(:authenticated => true).map { |pax| pax.name }
  end
  
  def seated?
    self.passengers.all? { |pax| pax.seat }
  end
end
