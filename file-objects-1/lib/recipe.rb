class Recipe
  attr_accessor :title, :description, :ingredients, :cook_time, :featured
  def initialize(title:, description:, ingredients:, cook_time:, featured:)
    @title = title 
    @description = description 
    @ingredients = ingredients 
    @cook_time = cook_time 
    @featured = featured
  end
  
  def self.from_json(path)
    json = JSON.parse(File.read(path), symbolize_names: true)
    new(**json)
  end
end
