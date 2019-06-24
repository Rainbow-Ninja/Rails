class BooksController < ApplicationController

    def index
       @book = Book.all 
    end

    def create
        @book = Book.create(title: params["title"], genre: params["genre"], author_id: params["author"])
        #need to find_by author and link them, else create new author
        @book.save
        puts "******************************"
        puts @book.errors.full_messages
        puts "******************************"
        redirect_to '/books'
    end

    def new
        @book = Book.new
    end
    
end