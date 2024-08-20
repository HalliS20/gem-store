class Item < ApplicationRecord
  has_one_attached :photo

  validates :title, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validate :acceptable_photo

  private

  def acceptable_photo
    return unless photo.attached?

    unless photo.blob.byte_size <= 1.megabyte
      errors.add(:photo, "is too big")
    end

    acceptable_types = ["image/jpeg", "image/png", "image/jpg", "image/webp"]
    unless acceptable_types.include?(photo.content_type)
      errors.add(:photo, "must be a JPEG or PNG")
    end
  end
end