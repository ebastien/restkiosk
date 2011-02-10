xml.instruct!
xml.belt(:xmlns => "http://schemas.restkiosk.com") do
  xml.weight @weight
  xml.link :rel => "self", :href => checkin_belt_url(@booking)
  xml.link :rel => "checkin", :href => checkin_url(@booking)
end
