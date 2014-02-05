require 'spec_helper'

describe MediawikiApi::Client do
  describe "#log_in" do
    it "logs in on successful response" do
      stub_request(:post, "localhost/api.php").
        with(body: hash_including({ format: "json", action: "login", lgname: "Test", lgpassword: "qwe123" })).
        to_return(status: 200, body: {
          result: "Success",
          token: "b5780b6e2f27e20b450921d9461010b4",
          cookieprefix: "enwiki",
          sessionid: "17ab96bd8ffbe8ca58a78657a918558e"
        }.to_json )
      subject.log_in "Test", "qwe123"
      subject.logged_in.should be true
    end
  end
end
