xml.instruct!
xml.identities(:xmlns => "http://schemas.restkiosk.com") do
  @booking.identities.each do |name|
    xml.identity do
      xml.name name
    end
  end
  if @booking.authenticated?
    xml.link :rel => "checkin", :href => checkin_url(@booking)
  else
    xml.link :rel => "self", :href => checkin_identities_url(@booking)
  end
end
