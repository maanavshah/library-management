class Book < ApplicationRecord
  belongs_to :subject

  mount_uploader :image, ImageUploader

  validates_presence_of :title
  validates_numericality_of :price, message: 'Price should be numeric'
  validates :image, file_size: { less_than: 1.megabytes }
end
