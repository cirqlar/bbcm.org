class Image < ApplicationRecord
  default_scope { order(created_at: :desc) }

  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :event, length: {maximum: 50}
  validates :people, length: {maximum: 500}
end
