class TrackerController < ApplicationController

  def position

  @response = HTTParty.get('https://api.logistimatics.com/api/positions?device_id=45755', {headers: {'Authorization' => "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOiAxNTc1MzI3ODY1LCAianRpIjogNTc3MjQsICJvcmdhbml6YXRpb25faWQiOiAyNzI3OX0.rJjUv3EtEiFAumKA2RCy2r1cjHyaAoFdC7BKchNsv3U"}}).parsed_response
  end


end
