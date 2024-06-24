class Post < ApplicationRecord
  validates :message, presence: true

  belongs_to :user, required: false
end
