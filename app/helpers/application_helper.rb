module ApplicationHelper
  def greeting_message
    if user_signed_in?
      "Hello, #{current_user.email}!"
    else
      "Welcome, guest!"
    end
  end
end
