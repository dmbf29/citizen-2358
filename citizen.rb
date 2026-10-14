class Citizen
  # charles.first_name
  attr_reader :first_name, :last_name, :age # creates a method

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def can_vote?
    return age >= 18
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end

# Citizen.new('Charles', 'Collins', 21)

# Restaurant.categories # class method
# restuarant.category # instance method
# charles.categories
  # def categories

  # end
