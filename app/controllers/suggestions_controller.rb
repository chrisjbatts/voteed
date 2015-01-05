class SuggestionsController < ApplicationController

  def index
    @suggestions = Suggestion.all
  end

  def new
  end

  def create
    Suggestion.create(suggestion_params)
    redirect_to '/suggestions'
  end

  def suggestion_params
    params.require(:suggestion).permit(:overview, :description, :provider)
  end

end
