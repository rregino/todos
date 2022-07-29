require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    
    User.create!(email: "someone_else@example.com").todos.create!(title: "Study Rails")
    
    sign_in_as "someone@example.com"
    
    expect(page).not_to display_todo("Study Rails")
  end
end