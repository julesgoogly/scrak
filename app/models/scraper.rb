class Scraper

	def self.scrape 
		data=
		 HTTParty.get('http://www.brainyquote.com/quotes/authors/j/jayz.html')

		 response_body = 
		 	data.response.body

		 doc = Nokogiri::HTML(
		 		response_body
		 	)

		 	quotes = []
		 	doc.css('.bqQuoteLink a').each do |link|
		 		quotes << link.content
		 	end

		 #	element = rand(quotes.count -1)

		 #	puts quotes.inspect
		 	quotes.sample
	end
end
