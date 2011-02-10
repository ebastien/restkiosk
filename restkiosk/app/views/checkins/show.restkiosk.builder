xml.instruct!
xml.checkin(:xmlns => "http://schemas.restkiosk.com") do
  if @booking.authenticated?
    xml.link :rel => "bags", :href => checkin_belt_url(@booking)
  else
    xml.link :rel => "identities", :href => checkin_identities_url(@booking)
  end
  xml.link :rel => "self", :href => checkin_url(@booking)
end
