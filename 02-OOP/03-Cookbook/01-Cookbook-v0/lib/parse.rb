require 'nokogiri'
doc = Nokogiri::HTML(File.open('marmiton.html'))

doc.search('.m_search_result').each do |element|
  puts "#{element.search('.m_search_titre_recette > a').inner_text}"
  puts "Rating : #{element.search('.etoile1').size} / 5}"
end