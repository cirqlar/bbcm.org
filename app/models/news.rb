class News < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :message, presence: true
end
