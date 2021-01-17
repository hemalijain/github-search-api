class GithubSearchService

  def self.call(search_keyword,page=1, category)
    results_hash={}
    set_up_connection
    unless category
      ["users","issues","repositories"].each do |category|
        results_hash[category] = get_results(search_keyword,page,category)
      end
    else
      results_hash[category] = get_results(search_keyword,page,category)
    end
    results_hash
  end
end

def get_results(search_keyword,page, category)
  method_name = "search_#{category}"
  results = @client.send(method_name, search_keyword, page:page.to_i)
  number_of_pages = (results["total_count"]/30).round
  [results, number_of_pages]
end

def set_up_connection
  @client ||= Octokit::Client.new(auto_traversal: true)
end