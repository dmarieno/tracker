class WebhookController < ApplicationController
  def logistidata
    # Using webhooks
    api_token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1MzI3ODY1LCAianRpIjogNTc3MjQsICJvcmdhbml6YXRpb25faWQiOiAyNzI3OX0.rJjUv3EtEiFAumKA2RCy2r1cjHyaAoFdC7BKchNsv3U'
    #device_id = '45755'
    the_enpoint = 'https://gps.logistimatics.com/api/webhook?device_id=45755'
    token_string = "\'Authorization\' => \"Bearer #{api_token}\""

    data = {
              name: "SRTHooker",
              url:'http://1f74869a.ngrok.io/'
            }

    @webhook = HTTParty.put('https://gps.logistimatics.com/api/webhook?device_id=45755',
                              :body => data.to_json,
                              :headers => {'Authorization' => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1MzI3ODY1LCAianRpIjogNTc3MjQsICJvcmdhbml6YXRpb25faWQiOiAyNzI3OX0.rJjUv3EtEiFAumKA2RCy2r1cjHyaAoFdC7BKchNsv3U"})


    @event = JSON.parse(request.body.read)
    @gurd = 'sit'
  end
end
