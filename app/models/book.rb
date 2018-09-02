class Book < ApplicationRecord
  belongs_to :subject

  mount_uploader :image, ImageUploader

  validates_presence_of :title
  validates_numericality_of :price, message: 'Error Message'
end
