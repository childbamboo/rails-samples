require 'nokogiri'
require 'open-uri'
module Scrape
  BPS_SITE_URL = 'http://www.bpsinc.jp'
  BPS_TARGET_CSS = '.footer-container ul.site-map-child li a' # サイト変わってた。。。ので修正
 
  def self.bps_global_navi
    doc = Nokogiri::HTML(open(BPS_SITE_URL))
    doc.css(BPS_TARGET_CSS).each do |link|
      Tag.find_or_create_by(name: link.content)
    end
  end
end
