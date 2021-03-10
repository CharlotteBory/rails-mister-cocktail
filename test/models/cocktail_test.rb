require "test_helper"

class CocktailTest < ActiveSupport::TestCase
  test "name returns the cocktail name" do
    cocktail = Cocktail.new(name: "Bloody Mary")
    assert_equal "Bloody Mary", cocktail.name
  end
end
