import paho.mqtt.client as mqtt

def on_message(client, userdata, message):
    cpu_temperature = message.payload.decode()
    print(f"Received CPU temperature: {cpu_temperature}°C")

# Configure the MQTT client
client = mqtt.Client("PC_Subscriber")
client.connect("localhost")  # Since the broker is on the PC itself

client.subscribe("sensor/cpu_temperature")
client.on_message = on_message

# Start the loop to process received messages
client.loop_forever()

