require 'rails_helper'

describe Recipe do
  describe '.quick_recipes' do
    it 'returns recipes with a cooking time less than 30 min' do

      pb_and_j = Recipe.create!(name: 'Peanut Butter & Jelly Sandwich',
        instructions: 'blah', cooking_time: 5, servings: 1)
      pot_roast = Recipe.create!(name: 'Pot Roast',
        instructions: 'blah blah', cooking_time: 240, servings: 12)
      cheerios = Recipe.create!(name: 'A Bowl of Cheerios',
        instructions: 'bloop', cooking_time: 4, servings: 1)

      results = Recipe.quick_recipes

      expect(results).to include(pb_and_j)
      expect(results).to include(cheerios)

      expect(results).to_not include(pot_roast)
    end
  end
end
