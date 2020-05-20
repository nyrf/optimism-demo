class Comment < ApplicationRecord
  validates :body, presence: true, db_uniqueness: { scope: :post_id }
  belongs_to :post, optional: true
end
