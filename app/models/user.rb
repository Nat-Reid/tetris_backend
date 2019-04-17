class User < ApplicationRecord
  has_many :scores

  validates :initials, uniqueness: { case_sensitive: true }
end
