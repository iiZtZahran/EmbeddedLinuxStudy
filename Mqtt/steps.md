## setting up mosquitto 
```cpp
//Enable and start the Mosquitto service:
sudo systemctl enable mosquitto
sudo systemctl start mosquitto

//Verify Mosquitto is running:
sudo systemctl status mosquitto

//configure 
sudo nano /etc/mosquitto/mosquitto.conf

mosquitto_sub -h localhost -t test/topic 

```

## setting up client 
``` cpp 

source myenv/bin/activate

sudo apt install -y mosquitto mosquitto-clients

sudo systemctl enable mosquitto
sudo systemctl start mosquitto

mosquitto_pub -h 192.168.1.9 -t test/topic -m "Hello from Raspberry Pi!"

```

## subscribe to topic 
``` cpp
mosquitto_sub -h <broker_ip> -t "test/topic"
```

## publish a message 
``` cpp 
mosquitto_pub -h <broker_ip> -t "test/topic" -m "Hello, MQTT!"
```

