class Post < ApplicationRecord
  validates :title, presence: true
  validates :category, inclusion: { in: %w[Fiction Non-Fiction],
                                    message: '%<value>s is not a valid category.' }
  validates :content, length: { minimum: 100 }
end
