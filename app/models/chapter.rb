class Chapter < ApplicationRecord
  belongs_to :post
  validates :header, presence: true
  validates :body, presence: true, length: { maximum: 5000 }
end
