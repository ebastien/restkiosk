xml.instruct!
xml.kiosk(:xmlns => "http://schemas.restkiosk.com") do
  xml.link :rel => "checkin", :href => kiosk_url
end
