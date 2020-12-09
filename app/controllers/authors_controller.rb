class AuthorsController < ApplicationController
  before_action :authenticate_author!

  layout 'authors'
  def destroy
    @author = current_author.posts.find(params[:id])
    @author.destroy
    redirect_to destroy_author_session_path, notice: 'Post was successfully destroyed.'
  end
end