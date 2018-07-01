require 'nokogiri'

class AtCoder < ApplicationRecord
  self.pluralize_table_names = false
  self.primary_key = :code

  def to_param
    code.parametarize   
  end

  def self.update_contests
    # request atcoder contests page
    contests = Nokogiri::HTML(open('https://atcoder.jp/contest', 'User-Agent' => USER_AGENT).read).css('.table-default')[1].css('tbody > tr')

    # delete old contests from database
    delete_all

    # add contests
    contests.each do |contest|
      tds = contest.css('> td')
      
      start_time = tds[0].text
      a = tds[1].css('a')[0]
      url = a['href']
      duration = tds[2].text

      tds = contest.css('table td')

      create(code: url.split('.')[0].split('/').last,
             name: add_target_attr(a.to_s),
             start_time: start_time,
             duration: duration,
             participate: tds[1].text,
             rated: tds[3].text)
    end
  end
end
