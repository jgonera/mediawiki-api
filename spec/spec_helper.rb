require 'webmock/rspec'
require 'json'
require 'mediawiki-api'

module TestHelpers
  def api_url
    "http://localhost/api.php"
  end
end

RSpec.configure do |conf|
  conf.include TestHelpers
end
