xml.instruct!
xml.pass(:xmlns => "http://schemas.restkiosk.com") do
  xml.name @passenger.name
  xml.seat @passenger.seat.id
end
