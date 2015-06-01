class Request
  def initialize
  end

  def hwk_methods(params)
    if params[:resource] == 'users'  #but there's no resource...so fuck
      user = User.all
      user.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}" #does this need to be in a string?
      end
    else
      puts "hey"
    end
  end
end

