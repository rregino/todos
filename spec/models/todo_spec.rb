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
    todo = User.create!(email: "test").todos.create!(title: "Study Rails", completed_at: nil)
    # todo = Todo.create!(email: "test", completed_at: nil)
    todo.complete!
    expect(todo).to be_completed
  end
end

describe Todo, "#mark_incomplete!" do
  it "sets completed_at to nil" do
    todo = User.create!(email: "test").todos.create!(title: "Study Rails", completed_at: Time.current)
    # todo = Todo.create!(email: "test", completed_at: Time.current)
    todo.mark_incomplete!
    expect(todo).not_to be_completed
  end
end


# RSpec version - I'm sure I'm not using context correctly?
RSpec.describe Todo, type: :todo do
  context "#completed?" do
    it "returns true if completed_at is set" do
      todo = build(:todo, :completed)
      expect(todo).to be_completed
    end

    it "returns false if completed is not set" do
      todo = build(:todo, :incomplete)
      expect(todo).not_to be_completed
    end
  end

  context "#complete!" do
    it "updates completed_at" do 
      todo = create(:todo)
      todo.complete!
      expect(todo).to be_completed
    end
  end
  
  context "#mark_incomplete!" do
    it "sets completed_at to nil" do
      todo = create(:todo)
      todo.mark_incomplete!
      expect(todo).not_to be_completed
    end
  end

  # The following tests are just to grasp my understanding on create/build/build_stubbed
  context "factory_bot#create" do
    it "fails if create was called with a blank title" do
      expect { create(:todo, :blank_title) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "fails if create was called with a null user id" do
      expect { create(:todo, :no_user) }.to raise_error(ActiveRecord::RecordInvalid)
    end

  end

  context "factory_bot#build" do
    it "succeeds if build was called with a blank title" do
      expect { build(:todo, :blank_title) }.not_to raise_error
    end

    it "succeeds if build was called with a null user id" do
      expect { build(:todo, :no_user) }.not_to raise_error
    end
  end

  context "factory_bot#build_stubbed" do
    it "succeeds if build_stubbed was called with a blank title" do
      expect { build_stubbed(:todo, :blank_title) }.not_to raise_error
    end

    it "succeeds if build_stubbed was called with a null user id" do
      expect { build_stubbed(:todo, :no_user) }.not_to raise_error
    end
  end
end