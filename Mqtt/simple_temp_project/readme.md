# CPU Temperature Monitoring System

This project uses MQTT to monitor the CPU temperature of a Raspberry Pi and display it on a PC.

## Requirements

- **Hardware**: Raspberry Pi, PC
- **Software**: Python 3.x, Paho MQTT library, Mosquitto broker

## Setup

1. **Install Packages**:
   - On Raspberry Pi:
     ```bash
     pip3 install paho-mqtt
     ```
   - On PC (install Mosquitto):
     ```bash
     sudo apt install mosquitto mosquitto-clients
     sudo systemctl start mosquitto
     ```


## Running the Project

1. Start the subscriber on the PC:
   ```bash
   python3 cpu_temp_subscriber.py
   ```

2. Start the publisher on the Raspberry Pi:
   ```bash
   python3 cpu_temp_publisher.py
   ```

## Conclusion

This project demonstrates real-time CPU temperature monitoring using MQTT.