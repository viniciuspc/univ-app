class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?
  def current_user
    # ||= memoization only perform the query if @current_user does not exists
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    !!current_user
  end


end
