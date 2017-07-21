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


# 2017-07-21T01:34:25.200859+00:00 app[web.1]: {"ToCountry"=>"US", "ToState"=>"PA", "SmsMessageSid"=>"SM152a7c9bd185a27aa3c28cd5ab8ebfc7", "NumMedia"=>"0", "ToCity"=>"MOUNT PLEASANT", "FromZip"=>"95403", "SmsSid"=>"SM152a7c9bd185a27aa3c28cd5ab8ebfc7", "FromState"=>"CA", "SmsStatus"=>"received", "FromCity"=>"SANTA ROSA", "Body"=>"test", "FromCountry"=>"US", "To"=>"+17246134111", "MessagingServiceSid"=>"MG3e2fc5219b15b9fe4f26b8d209cbfdb3", "ToZip"=>"15666", "NumSegments"=>"1", "MessageSid"=>"SM152a7c9bd185a27aa3c28cd5ab8ebfc7", "AccountSid"=>"ACd13bade3c51c7c83670737a310dc790a", "From"=>"+17077998675", "ApiVersion"=>"2010-04-01"}
# 2017-07-21T01:35:01.745808+00:00 app[web.1]: {"ToCountry"=>"US", "MediaContentType0"=>"image/jpeg", "ToState"=>"PA", "SmsMessageSid"=>"MM4e5c68ed9bf4093d40722c87431f0a32", "NumMedia"=>"1", "ToCity"=>"MOUNT PLEASANT", "FromZip"=>"95403", "SmsSid"=>"MM4e5c68ed9bf4093d40722c87431f0a32", "FromState"=>"CA", "SmsStatus"=>"received", "FromCity"=>"SANTA ROSA", "Body"=>"", "FromCountry"=>"US", "To"=>"+17246134111", "MessagingServiceSid"=>"MG3e2fc5219b15b9fe4f26b8d209cbfdb3", "ToZip"=>"15666", "NumSegments"=>"1", "MessageSid"=>"MM4e5c68ed9bf4093d40722c87431f0a32", "AccountSid"=>"ACd13bade3c51c7c83670737a310dc790a", "From"=>"+17077998675", "MediaUrl0"=>"https://api.twilio.com/2010-04-01/Accounts/ACd13bade3c51c7c83670737a310dc790a/Messages/MM4e5c68ed9bf4093d40722c87431f0a32/Media/MEd44c96b3df8d39fc49541e942a951588", "ApiVersion"=>"2010-04-01"}
