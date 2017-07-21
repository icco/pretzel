require "rubygems"
require "twilio-ruby"
require "sinatra"

# https://www.twilio.com/docs/quickstart/ruby/sms/hello-monkey
# https://www.twilio.com/docs/api/twiml/sms/twilio_request
post "/sms" do
  p params
  twiml = Twilio::TwiML::MessagingResponse.new do |r|
    r.message(body: "Recorded!")
  end

  twiml.to_s
end
