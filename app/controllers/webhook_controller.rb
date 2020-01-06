class WebhookController < ApplicationController

  def logistidata
    # Using webhooks
    api_token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1MzI3ODY1LCAianRpIjogNTc3MjQsICJvcmdhbml6YXRpb25faWQiOiAyNzI3OX0.rJjUv3EtEiFAumKA2RCy2r1cjHyaAoFdC7BKchNsv3U'
    #device_id = '45755'
    the_enpoint = 'https://gps.logistimatics.com/api/webhook?device_id=45755'
    token_string = "\'Authorization\' => \"Bearer #{api_token}\""

    data = {
              name: "SRTHooker",
              url:'http://4bb88e2a.ngrok.io/webhook/logistidata'
            }

    @webhook = HTTParty.put('https://gps.logistimatics.com/api/webhook?device_id=45755',
                              :body => data.to_json,
                              :headers => {'Authorization' => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1MzI3ODY1LCAianRpIjogNTc3MjQsICJvcmdhbml6YXRpb25faWQiOiAyNzI3OX0.rJjUv3EtEiFAumKA2RCy2r1cjHyaAoFdC7BKchNsv3U"})


  end
  def webhookdata
    @testrequest = request
    if request.headers['Content-Type'] == 'application/json'
      @data = JSON.parse(request.body.read)
    else
      @data = params.as_json
    end

  #Webhook::Received.save(data:data, integration: params[:https://api.logistimatics.com/api/command?device_id=45755])

  render nothing: true
  end
end
