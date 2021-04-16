class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.all
  end

  def show
  end

  def edit
  end
end
