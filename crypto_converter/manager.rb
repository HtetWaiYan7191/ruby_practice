require "uri"
require "net/http"
require "json"
require "./coin"

class Manager
    @@repo = {}
    def initialize
        initialize_repo
    end

    def initialize_repo
        response = web_scrap
        json = JSON.parse(response) #parse the json
        json.each do |key, value| 
            coin = Coin.new(key, value['USD'], value['EUR'])
            @@repo[key] = coin
        end
    end

    def web_scrap
        url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH&tsyms=USD,EUR"
        uri = URI(url)
        Net::HTTP.get(uri) #return string response
    end

    def coin_list
        @@repo.keys
    end

    def calculate(amount, symbol, to)
        coin = @@repo[symbol]
        amount*coin.send(to.to_sym)
    end
end