class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end

  def self.my_attr_accessor(*args)
    args.each do |arg|
      self.class_eval("def #{arg}=(val)\n @#{arg}=val end")
      self.class_eval("def #{arg}\n @#{arg} end")
    end
  end

end

p example = User.new(name: 'Traf', email: 'trafium@gmail.com')
p example.formatted_email