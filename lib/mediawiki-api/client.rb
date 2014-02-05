require 'faraday'
require 'json'

module MediawikiApi
  class Client
    attr_accessor :logged_in

    def initialize(adapter = Faraday.default_adapter)
      @conn = Faraday.new(url: "http://localhost") do |faraday|
        faraday.request :url_encoded
        faraday.response :logger
        faraday.adapter adapter
      end
      @logged_in = false
    end

    def log_in(username, password)
      resp = @conn.post "/api.php", { action: "login", lgname: username, lgpassword: password, format: "json" }
      data = JSON.parse resp.body
      @logged_in = data['result'] == 'Success'
    end
  end
end
