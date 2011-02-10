xml.instruct!
xml.checkin(:xmlns => "http://schemas.restkiosk.com") do
  @booking.passengers.each do |pax|
    xml.link :rel => "pass", :href => pass_url(pax)
  end
end
