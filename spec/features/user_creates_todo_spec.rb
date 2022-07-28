require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add a new todo"
    # filling in form fields
    fill_in "Title", with: "Study Rails"
    # click a link or a button
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "Study Rails"
  end
end