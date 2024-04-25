class BooksController < ApplicationController
  
  def index
    @book = Book.new
    @user = User.find(current_user.id)
    @books = Book.all
  end
  
  def show
　　 @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to user_path(current_user.id)
    else
      render :index
    end
  end

  def destroy

  end
  
  
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
