class Task < ApplicationRecord
  has_many :comments
  validates :subject , :description, presence: true, length: {minimum: 5}
end
