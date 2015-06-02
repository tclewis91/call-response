class Request

  def initialize
    @num = [*] #find way to make it infiinite...or change find
  end

  def element_methods(params)
    if params[:resource] == 'users'
      user = User.all
      user.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}"
    end

    if params[:id] != nil
      individual_id = User.find(@num)
      individual_id.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}"
      end
    end
    if params == nil
      puts "Error 404 Page not found"
    end
  end
end

