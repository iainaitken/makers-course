class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if comparison.compare(@value) == true
      puts "Test passes! :)"
    else
      puts "Test fails! D:"
    end
  end
end

class Equal
  def initialize(value1)
    @value1 = value1
  end

  def compare(value2)
    @value1 == value2
  end
end

=begin
class Include
  def initialize(value_array)
    @value_Array = value_array
  end

  def compare(value)
    @value_array.include?(value)
  end
end
=end

def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

=begin
def include(value)
  Include.new(value)
end

puts "include test"
expect([1,2,3]).to include 2
=end

puts "comparison tests"
expect(5).to eq 6

Expect.new(5).to(Equal.new(2+3))

Expect.new(7).to(Equal.new(7))

Equal.new(true).compare(true)

Equal.new(true).compare(false)

=begin
Exercise 3
class Expect
  def initialize(value1)
    @value1 = value1
  end

  def to_equal(value2)
    puts "Test passes! :)" if @value1 == value2
    puts "Test fails! D:" if @value1 != value2
  end
end

Expect.new(true).to_equal(true)

Expect.new(true).to_equal(false)
=end

=begin
Exercise 2
class Expect
  def to_be_equal(value1, value2)
    puts "Test passes! :)" if value1 == value2
    puts "Test fails! D:" if value1 != value2
  end
end

Expect.new.to_be_equal(true, true)

Expect.new.to_be_equal(true, false)
=end

=begin
Exercise 1
def expect_to_be_equal(value1, value2)
  puts "Test passes! :)" if value1 == value2
  puts "Test fails! D:" if value1 != value2
end

expect_to_be_equal(true, true)

expect_to_be_equal(true, false)
=end
