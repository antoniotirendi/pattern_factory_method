class AnimalFactory
  TYPES = [:dog, :cat]

  def self.for(animal_type)
    animal = nil
    case animal_type
    when :cat
      animal = Cat.new
    when :dog
      animal = Dog.new
    end
    animal
  end
end