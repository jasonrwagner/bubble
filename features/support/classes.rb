class Num
  attr_accessor :num
  def initialize(num)
    @num = rand(num).to_s
  end
end

#class User
#  attr_accessor :first_name, :last_name, :likes, :about_me

#  def initialize(first_name, last_name, likes, about_me)
#    @first_name = first_name
#    @last_name = last_name
#    @likes = likes
#    @about_me = about_me
#  end
#end