module ApplicationHelper
  def logged_in?
    binding.pry
    session[:user_id]
  end
end
