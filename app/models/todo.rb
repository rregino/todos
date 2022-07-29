class Todo < ApplicationRecord
  validates :email, presence: true
  
  def complete!
    touch :completed_at
  end

  def completed?
    completed_at?
  end
end
