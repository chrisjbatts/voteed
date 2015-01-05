class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all
  end

  def new
  end

end
