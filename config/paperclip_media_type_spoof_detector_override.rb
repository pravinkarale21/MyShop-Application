require 'paperclip/media_type_spoof_detector'
module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end

# Paperclip::Attachment.default_options.merge!(
#     :path => ":rails_root/app/assets/images", 
#     :url => "/:rails_root/app/assets/images/"
#  )