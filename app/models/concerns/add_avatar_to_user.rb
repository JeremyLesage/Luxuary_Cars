class AddAvatarToUsers < ApplicationRecord

mount_uploader :photo, PhotoUploader

end
