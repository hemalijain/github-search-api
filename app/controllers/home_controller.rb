class HomeController < ApplicationController
  def search
  end

  def github_search
    @results=GithubSearchService.call(params["search"], params[:page], nil)
    respond_to do |format|
      format.js { render 'search_results'}
    end
  end

  def github_search_item
    @results = GithubSearchService.call(params[:search], params[:page], params[:category])
    respond_to do |format|
      format.js { render 'search_results_item'}
    end
  end

end
