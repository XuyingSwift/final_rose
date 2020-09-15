class Rose < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :meaning, presence: true, length: { maximum: 255 }
  validates :image_url, presence: true

end
