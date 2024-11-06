import time
import paho.mqtt.client as mqtt
import os

# Function to read the CPU temperature
def get_cpu_temperature():
    temp = os.popen("vcgencmd measure_temp").readline()
    return float(temp.replace("temp=", "").replace("'C\n", ""))

# Configure the MQTT client
broker_address = "192.168.1.9"  # Replace with your PC's IP address
client = mqtt.Client("RaspberryPiPublisher")


client.connect(broker_address)

try:
    while True:
        # Get the CPU temperature
        cpu_temperature = get_cpu_temperature()
        client.publish("sensor/cpu_temperature", cpu_temperature)
        print(f"Published CPU temperature: {cpu_temperature}  C")
        time.sleep(2)  # Publish every 2 seconds
except KeyboardInterrupt:
    print("Stopping the CPU temperature publisher.")
    client.disconnect()




