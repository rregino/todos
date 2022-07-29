module Features
  def create_todo(todo_title)
    click_on "Add a new todo"
    # filling in form fields
    fill_in "Title", with: todo_title
    # click a link or a button
    click_on "Submit"
  end

  def display_todo(text)
    have_css(".todos li", text: text)
  end

  def display_completed_todo(text)
    have_css(".todos li.completed", text: text)
  end


end