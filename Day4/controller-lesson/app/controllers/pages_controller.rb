class PagesController < ApplicationController

    #filters executes a bunch of code before the intended method executes and after the intended mehtod executes
    before_action :before_data
    after_action :after_data

    def home
    end

    def data
        #params is a var that stores data coming from the routes which could be used in our controller
        puts "params info -----------"
        puts params
        puts "params info -----------"
        #instead of sending a html file, let's send a plain text
        # render plain: "Working"
        # render html: "<h1>WORKING</h1>".html_safe

       # render "pages/contact" #this sends back the contacts page

       #redirect_to. after finishing all the above, redirects to the method/page stated
    #    redirect_to "pages/home"
        redirect_to root_path #same as line above
    end

    def before_data
        puts "*** Method executed before the data method ***"
    end

    def after_data
        puts "*** Method executed after the data method ***"
    end
end