class Review < ApplicationRecord
  belongs_to :reviewable, polymorphic: true
  belongs_to :user
  validates :rating, presence: true, mumericality: { only_integer: true, greater_than: 0, less_than_or_qual_to: 5 }
  validates :description, presence: true, lenght: { minimum: 50 }
  validates :user_id, uniqueness: { scope: [:reviewable_type, :reviewable_id], message: "Can add only one review per resources" }
end
