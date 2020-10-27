class Topic < ApplicationRecord
  mount_uploader :image_name, PictureUploader
end
