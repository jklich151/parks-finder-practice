class ParksController < ApplicationController
  def index
    render locals: {
    park_results: StateParkSearch.new(params[:state])
  }
  end
end
