class Request

  def initialize
    @num = [1..4]
  end

  def element_methods(params)
    if params[:resource] == 'users'
      user = User.all
      user.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}" #does this need to be in a string?
      end
    end

    if params[:id] != nil
      individual_id = User.find(@num)
      individual_id.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}"
      end
    else
      puts "Error 404 Page Not Found"
    end
  end
end

