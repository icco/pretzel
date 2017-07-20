require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

# https://www.twilio.com/docs/quickstart/ruby/sms/hello-monkey
# https://www.twilio.com/docs/api/twiml/sms/twilio_request
get '/sms-quickstart' do
  twiml = Twilio::TwiML::MessagingResponse.new do |r|
    r.message(body: "Hey Monkey. Thanks for the message!")
  end
  twiml.to_s
end
