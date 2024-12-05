require 'mqtt'

client = MQTT::Client.connect(
  :host => ENV['MQTT_HOST'],
  :port => ENV['MQTT_PORT'],
  :username => ENV['MQTT_USERNAME'],
  :password => ENV['MQTT_PASSWORD'],
  :ssl => true
)

client.publish('test', 'im from ruby client', retain=false)

