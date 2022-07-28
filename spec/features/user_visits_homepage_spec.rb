require "rails_helper"

# feature - describing the functionality we'll be adding
# scenario - are the individual descriptions for the test

feature "User visits homepage" do
  scenario "successfully" do
    visit root_path

    # page is provided with capybara
    expect(page).to have_css "h1", text: "Todos"
  end
end