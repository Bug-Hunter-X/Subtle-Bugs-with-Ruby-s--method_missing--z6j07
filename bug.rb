```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found."
    # Return a default value or raise an exception as needed
    nil 
  end
end

my_object = MyClass.new(10)
my_object.some_method # This will trigger method_missing
my_object.another_method(1,2,3) #This will trigger method_missing
```