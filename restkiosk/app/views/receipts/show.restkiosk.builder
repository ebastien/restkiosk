xml.instruct!
xml.receipt(:xmlns => "http://schemas.restkiosk.com") do
  xml.code @bag.id
  xml.weigth @bag.weight
  xml.link :rel => "cancel", :href => receipt_url(@bag)
  xml.link :rel => "bags", :href => checkin_belt_url(@booking)
end
