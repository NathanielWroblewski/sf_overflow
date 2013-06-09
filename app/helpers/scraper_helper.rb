require 'csv'

module ScraperHelper

  def scrape
    agent = Mechanize.new

    link_array = []
    address_array = []
    price_array = []
    
    (1..30).each do |page|
    
      page = agent.get("http://www.trulia.com/for_rent/94108,94101,94102,94103,94104,94105,94107,94109,94111,94115,94117,94123,94158_zip/14_zm/37.761359,37.797502,-122.449348,-122.396099_xy/price;a_sort/#{page}_p")
    
      page.search('.cols18').each do |item|
        link_array << "http://www.trulia.com/#{item.children[3].children[1].attributes['href'].value}"
        address_array << item.children[3].children[1].attributes['alt'].value
      end
    
      page.search('.col.lastCol.txtR')[1..-1].each do |item|
        price_array << item.children[1].text
      end
    end
    
    mega_array = link_array.zip(price_array, address_array)
    
    CSV.open('blah.csv', 'wb') do |csv|
      mega_array.each do |array|
        csv << array
      end
    end
  end
end
