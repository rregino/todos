# README

[https://thoughtbot.com/upcase/test-driven-rails](https://thoughtbot.com/upcase/test-driven-rails)

- Learned a couple of new tricks
  - How ActiveRecords can be chained
  - Conditional statements in HTML classes
- Creating tests per model and each function
- Creating feature tests per page
  - Feature is describing the functionality we’ll be adding
  - Scenario is the individual description for the test
- Capybara
  - `visit` for going to url specified in routes
  - `click_on` for clicking button/link
  - `fill_in` for filling in form fields
  - `have_css` to check if expected classes and text are present
- DatabaseCleaner
  - Used for resetting DB after every test run


* Note: Not a super in depth tutorial on tests, more like how to get started on them
* Tutorial is using an older version of Rails so function names have changed