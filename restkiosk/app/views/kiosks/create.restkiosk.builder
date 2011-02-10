xml.instruct!
xml.checkin(:xmlns => "http://schemas.restkiosk.com") do
  xml.link :rel => "self", :href => checkin_url(@booking)
  xml.link :rel => "identity", :href => identity_url(@booking)
end
