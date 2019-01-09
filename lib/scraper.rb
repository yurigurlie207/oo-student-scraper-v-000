require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))

    doc.css(".student-card").each do |studentCard|
      student = Student.new
      student.name = studentCard.css(".student-name").text
      student.location = studentCard.css(".stduent-location").text
      student.profile_url = studentCard[href]
      binding.pry
    end

  end

  def self.scrape_profile_page(profile_url)

  end

end
