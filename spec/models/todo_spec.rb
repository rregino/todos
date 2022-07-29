require "rails_helper"

describe Todo, "#completed?" do
  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end
  
  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end

end

# Hmm is it ok to be creating a user here?
describe Todo, "#complete!" do
  it "updates completed_at" do
    todo = User.create!(email: "test").todos.create!(completed_at: nil)
    # todo = Todo.create!(email: "test", completed_at: nil)
    todo.complete!
    expect(todo).to be_completed
  end
end

describe Todo, "#mark_incomplete!" do
  it "sets completed_at to nil" do
    todo = User.create!(email: "test").todos.create!(completed_at: Time.current)
    # todo = Todo.create!(email: "test", completed_at: Time.current)
    todo.mark_incomplete!
    expect(todo).not_to be_completed
  end
end