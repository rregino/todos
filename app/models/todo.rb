class Todo < ApplicationRecord
  validates :email, presence: true
end
