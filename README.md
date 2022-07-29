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

------

After following above tutorial, tried to use FactoryBot to generate test models
- `create` vs `build` vs `build_stubbed`
  - `create` saves to db, triggers model and db validations
  - `build` doesn't save to db, triggers validation for associated objects, assigns attributes
  - `build_stubbed` doesn't call db, doesn't build associations, doesn't trigger validations
  - `build_stubbed` > `build` > `create` in terms of performance