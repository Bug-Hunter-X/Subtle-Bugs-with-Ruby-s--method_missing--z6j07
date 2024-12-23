```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found."
    raise NoMethodError, "undefined method '#{method_name}' for #{self.class}"
  end
end

my_object = MyClass.new(10)
begin
  my_object.some_method # This will now raise NoMethodError
rescue NoMethodError => e
  puts "Exception caught: #{e.message}"
end
begin
  my_object.another_method(1,2,3) #This will now raise NoMethodError
rescue NoMethodError => e
  puts "Exception caught: #{e.message}"
end
```