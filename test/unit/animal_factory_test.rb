require_relative '../test_case'

class AnimalFactoryTest < Test::Unit::TestCase
  def test_animal_factory
    calls = AnimalFactory::TYPES.map do |type|
      AnimalFactory.for(type).getCall
    end

    assert_equal ['Woof woof', 'Meow meow'], calls
  end
end