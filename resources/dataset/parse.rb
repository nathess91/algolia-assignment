require 'json'
require 'pp'

rest_info = File.read('restaurants_info.json')
rest_list = File.read('restaurants_list.json')

arr1 = JSON.parse(rest_info)
arr2 = JSON.parse(rest_list)
mrg = []

arr1.each do |el1|
  arr2.each do |el2|
    if el2['objectID'] == el1['objectID']
      mrg.push(el1.merge(el2))
    end
  end
end

pp mrg
