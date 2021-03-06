class Router
  def initialize(meals_controller, customers_controller, employees_controller, orders_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @employees_controller = employees_controller
    @orders_controller = orders_controller
  end

  def run
    loop do
      # 1. Print the menu
      print_menu
      # 2. Ask the user what he/she wants to do next?
      puts 'What do you want to do next?'
      print '> '
      action = gets.chomp.to_i
      # 3. Call the right controller method
      case action
      when 1 then @meals_controller.add
      when 2 then @meals_controller.list
      when 3 then @customers_controller.add
      when 4 then @customers_controller.list
      when 5 then @employees_controller.list
      when 6 then @orders_controller.list
      when 7 then @orders_controller.add
      else
        puts 'Wrong action'
      end
    end
  end

  private

  def print_menu
    puts '1. Add a meal'
    puts '2. List available meals'
    puts '3. Add a customer'
    puts '4. List customers'
    puts '5. List employees'
    puts '6. List orders'
    puts '7. Add an order'
  end
end
