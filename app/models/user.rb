class User < ApplicationRecord
  has_many :todos

  def full_name
    "#{first_name} #{last_name}"
  end

end
