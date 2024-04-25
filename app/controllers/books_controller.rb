class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create

  end


  def index
    @user = User.find(current_user.id)
  end

  def show

  end

  def destroy

  end
  
  
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
