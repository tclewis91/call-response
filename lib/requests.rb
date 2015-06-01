class Request
  def initialize
  end

  def element_methods(params)
    if params[:resource] == 'users'  #but there's no resource...so fuck
      user = User.all
      user.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}" #does this need to be in a string?
      end
    if params[:id] =='id'
      individual_id = User.find(:id, element)
      individual_id.each do |element|
        puts "#{element.first_name}"
        puts "#{element.last_name}"
        puts "#{element.age}"
      end
    end
  end
end

