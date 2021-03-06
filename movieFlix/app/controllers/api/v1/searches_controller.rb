class​ ​Api::V1::SearchesController​ < ApplicationController​​
  
  def ​​index   
    check_search_value ​and​ (​return​​ if​ performed?)   
    search = PgSearch.multisearch(params[​:value​]).order(​"created_atDESC"​)   
      ender ​json:
    Api::V1::WatchableSerializer.new(search.map(&​:searchable​)).serialized_json
  ​end​ 
  private​​def​​check_search_value​
    if​ params[​:value​].present? && params[​:value​].length < 3 render ​json:​ { ​errors:​​"Parameter :value must have at least 3characters"​ }​
    end
  ​end
end
