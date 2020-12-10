module HomeHelper
   # Logs in the given user.
   def log_in(author)
    session[:author_id] = author.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_author ||= Author.find_by(id: session[:author_id])
  end
end
