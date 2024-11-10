class Video < ApplicationRecord
  validates_presence_of :release_date, :title, :description, :duration, :url_image, :url_video
end
