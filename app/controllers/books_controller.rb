class BooksController < ApplicationController
	def index
	  @books = Book.all 
	end
	def new
	  @book = Book.new
	end
	def show 
	 @book = Book.find(params[:id])
	end 
	def edit
		@book = Book.find(params[:id])
	 end
	def destroy
		@book = Book.find(params[:id])
		if @book.destroy
			redirect_to root_path
		else
			flash[:alert] = 'error while deleting'
		end
	end
	def create 
		@book = Book.new(book_params)
		if @book.save
			redirect_to details_path
		else
			render new
		end
	end
	def update
		 @book = Book.find(params[:id])
		if @book.update(book_params)
			redirect_to books_path
		else 
			render :edit
		end 
	end
	def book_params
		params.require(:book).permit(:author_id, :author_name, :id, :book_name, :book_descriptions, :book_price, :image)
	end
	end
