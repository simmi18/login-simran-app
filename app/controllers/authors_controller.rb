class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    @books = Book.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to details_path
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
    
  end
def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to authors_path
    else
      render :edit
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to root_path
  end

  private

    def author_params
      params.require(:author).permit(:author_name, :author_description)
    end
 end

