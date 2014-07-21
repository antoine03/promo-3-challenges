class CookbookRepository
  attr_reader :cookbook

  def initialize
    @tasks =[]
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def find_recipe(index)
    return @redcipes[index]

  def remove_recipe(index)
    @recipes.delete_at(recipe)
  end
end