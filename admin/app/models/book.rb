class Book < ApplicationRecord
  validates :title, :presence => true
  validates :content, :presence => true
  validates :image, file_size: {maximum: 5.megabytes.to_i}, :presence => false

  mount_uploader :image, ImageUploader
end
