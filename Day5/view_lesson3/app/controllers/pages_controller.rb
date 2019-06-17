class PagesController < ApplicationController
    def home
        #server sends response back via render method
        # render html: "<h1>Home Page</h1>".html_safe
        # render "pages/home" by default rails will look for a folder called Pages and file called home. Render can be more specific if I want
        @names = ["shun", "aidan", "derek"]
        @user = "Jo"
        # rails passes all my vars to the render page
    end

    def contact
        # @user = "Derek"
    end

    def books
        @books = ["Lost Symbol", "DaVinci Code", "Angels & Demons"]
        @user = "Dan Brown"
    end
end