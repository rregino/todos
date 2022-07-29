require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo("Study Rails")
    expect(page).to display_todo("Study Rails")
  end
end