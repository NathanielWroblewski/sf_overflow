require 'csv'

module ScraperHelper

  def scrape_trulia
    agent = Mechanize.new

    link_array = []
    address_array = []
    price_array = []
    
    (1..30).each do |page|
    
      page = agent.get("http://www.trulia.com/for_rent/94108,94101,94102,94103,94104,94105,94107,94109,94111,94115,94117,94123,94158_zip/14_zm/37.761359,37.797502,-122.449348,-122.396099_xy/price;a_sort/#{page}_p")
    
      page.search('.cols18').each do |item|
        link_array << "http://www.trulia.com#{item.children[3].children[1].attributes['href'].value}"
        address_array << item.children[3].children[1].attributes['alt'].value
      end
    
      page.search('.col.lastCol.txtR')[1..-1].each do |item|
        price_array << item.children[1].text
      end
    end
    
    @trulia_info = link_array.zip(price_array, address_array)
    
  end

  def export_trulia_data
    CSV.open('trulia_rentals.csv', 'wb') do |csv|
      @trulia_info.each do |array|
        csv << array
      end
    end
  end

  def scrape_craigslist
    agent = Mechanize.new

    page = agent.get("http://sfbay.craigslist.org/apa/")
    
    titles           = []
    prices           = []
    links            = []
    locations        = []
    @craigslist_data = []

    page.search('.pl a').each do |link|
      titles << link.text
      links << "http://sfbay.craigslist.org" + link.first[1]
    end

    page.search('.price').each do |price| 
      prices << price.text
    end

    page.search('.pnr').each do |location|
      locations << location.children[5].text.lstrip
    end

    @craigslist_data = titles.zip(prices, links, locations)

  end

  def export_craigslist_data
    CSV.open('craigslist_rentals.csv', 'wb') do |csv|
      @craigslist_data.each do |array|
        csv << array
      end
    end
  end

  def retrieve_craigslist_data
    craigslist_data = CSV.read('craigslist_rentals.csv')
  end
end
