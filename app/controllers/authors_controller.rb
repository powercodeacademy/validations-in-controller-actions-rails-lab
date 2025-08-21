class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

# Add validations to Author such that...
# The name cannot be blank
# The e-mail is unique

  private

  def author_params
    params.permit(:email, :name)
  end
end
