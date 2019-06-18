class PagesController < ApplicationController
    def pokedex
    end

    def create
        url = "https://pokeapi.co/api/v2/pokemon/#{pokemon-name}" #FIX THIS!!!!
        gem_plus_url = RestClient.get(url)
        @results = JSON.parse(gem_plus_url)
    end
end