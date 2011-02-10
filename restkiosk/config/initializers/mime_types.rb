# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

Mime::Type.register "application/vnd.restkiosk+xml", :restkiosk

# module Tokamak
#   module Builder
#     class Xml
#       builder_for "application/xml", "text/xml", "application/vnd.restkiosk+xml"
#     end
#   end
# end

Restkiosk::Application.configure do
  config.middleware.delete "ActionDispatch::ParamsParser"
  config.middleware.use ActionDispatch::ParamsParser, {Mime::RESTKIOSK => :xml_simple}
end
