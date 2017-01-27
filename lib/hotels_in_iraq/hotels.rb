class HotelsInIraq::Hotel
  attr_accessor :name, :rate, :location, :details
  def self.today
     self.scrape_hotels
  end

  def self.scrape_hotels
    hotels = []
    hotels << self.scrape_booking
    hotels
end
def self.scrape_booking
  doc = Nokogiri::HTML(open("http://www.booking.com/searchresults.en-gb.html?aid=314919&label=dubai-mall-5GqZHNTPZoflUzAKeiGi1wS119063895674%3Apl%3Ata%3Ap1460%3Ap2%3Aac%3Aap1t1%3Aneg%3Afi%3Atikwd-72282367588%3Alp9069852%3Ali%3Adec%3Adm&lang=en-gb&sid=411e3440794b1c167810e7e49700ffc0&sb=1&src=index&src_elem=sb&error_url=http%3A%2F%2Fwww.booking.com%2Findex.en-gb.html%3Faid%3D314919%3Blabel%3Ddubai-mall-5GqZHNTPZoflUzAKeiGi1wS119063895674%253Apl%253Ata%253Ap1460%253Ap2%253Aac%253Aap1t1%253Aneg%253Afi%253Atikwd-72282367588%253Alp9069852%253Ali%253Adec%253Adm%3Bsid%3D411e3440794b1c167810e7e49700ffc0%3Bsb_price_type%3Dtotal%26%3B&ss=Iraq&checkin_monthday=&checkin_month=&checkin_year=&checkout_monthday=&checkout_month=&checkout_year=&nflt=&sb_acc_types=1&room1=A%2CA&no_rooms=1&group_adults=2&group_children=0&ss_raw=ira&ac_position=1&ac_langcode=en&dest_id=101&dest_type=country&search_pageview_id=1955713485f50297&search_selected=true&search_pageview_id=1955713485f50297&ac_suggestion_list_length=5&ac_suggestion_theme_list_length=0"))
end
