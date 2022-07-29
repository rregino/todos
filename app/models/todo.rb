class Todo < ApplicationRecord
  belongs_to :user

  def complete!
    touch :completed_at
  end

  def mark_incomplete!
    update_column :completed_at, nil
  end

  def completed?
    completed_at?
  end
end
