# MVC Architecture

# every business logic or the data to be added, retrieved or deleted from the database must be coded in this \class
class CafeModel

    def initialize
        @drinks = {
            cappacino: 10,
            latte: 10,
            coke: 10
        }
    end

    # get the drink user has asked for
    def get_drink(drink_type)
        if(@drinks[drink_type] && @drinks[drink_type] > 0)
            @drinks[drink_type] -= 1
            return drink_type
        else
           return nil
        end

    end

    # show all available drinks in cafe
    def get_avail_drinks
        drinks = []
        @drinks.each {|key, value| 
            if(value > 0)
                drinks.push(key)
            end}
        return drinks
    end

end

# anything that has to \do with users intereaction must be \defined in the view \class
class CafeView
    def greeting
        puts "Hi there, how can I help you? "
    end

    def selection
        puts "Enter (1) to view menu, Enter (2) to place order"
        user_choice = gets.chomp.to_i
    end

    def show_menu(drinks)
        drinks.each {|drink| puts drink.capitalize}
    end

    def place_order
        puts "What drink would you like? "
        order = gets.chomp.to_sym #convert to symbol for my hash
    end

    def goodbye(drink_type)
        puts "Here is your #{drink_type}, have a nice day"
    end

    def wrong_answer
        puts "Invalid selection, try again"
    end
end

# it's an intermediate between model and view, the code here directs which view should be displayed to the user and what data must be retrieved from the model
class CafeController
    def initialize
        @view = CafeView.new #need to create an object so i can access the methods in a dif \class
        @model = CafeModel.new
    end

    #greet customer and get customer selection
    def greet_and_selection
        @view.greeting
        exit = true
        while exit
            user_selection = @view.selection
            if(user_selection != 1 && user_selection != 2)
                @view.wrong_answer
            else
                exit = false
            end
        end
        return user_selection
    end

    
    def run 
        selection = greet_and_selection
        if selection == 1
            drinks = @model.get_avail_drinks #check what drinks we actually have
            @view.show_menu(drinks) #show the available drinks
        else
            order = @view.place_order
            drink_received = @model.get_drink(order)
            if drink_received != nil
                @view.goodbye(drink_received)
            end
        end
    end
end

controller = CafeController.new
controller.run
