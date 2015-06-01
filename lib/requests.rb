class Requests
  def initialize
  end

def hwk_methods
  if params[:resource] == 'user'
    @user = User.all
    @user.each do |element|
    puts "#{element.first_name}"
    puts "#{element.last_name}"
    puts "#{element.age}" #does this need to be in a string?
    end
  end
end
