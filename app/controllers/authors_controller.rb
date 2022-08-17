class AuthorsController < AuthenticatedController
  def show
    @author = current_author
    render :show, locals: { author: @author }
  end
end
