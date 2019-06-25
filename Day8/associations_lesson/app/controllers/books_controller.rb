class BooksController < ApplicationController

    def index
       @book = Book.all 
    end

    def create
        find_author = Author.exists?(name: params["author"])
        if find_author == false
            Author.create(name: params["author"])
        end
        get_author = Author.find_by(name: params["author"])
        @book = Book.create(title: params["title"], genre: params["genre"], author_id: get_author[:id])
        @book.save
        redirect_to '/books'
    end

    def new
        @book = Book.new
    end
    
end