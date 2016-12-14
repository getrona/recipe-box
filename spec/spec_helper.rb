ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'sinatra'
require 'sinatra/activerecord'
require 'pg'
require 'capybara'
require 'pry'
require 'ingredient'
require 'instruction'
require 'recipe'

RSpec.configure do |config|
  config.after (:each) do
    Ingredient.all.each { |i| i.destroy}
    Instruction.all.each { |s| s.destroy}
    Recipe.all.each { |r| r.destroy}
  end
end
