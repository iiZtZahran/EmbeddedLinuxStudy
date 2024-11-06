## Architecture of MQTT
![alt text](https://www.hivemq.com/sb-assets/f/243938/1920x1080/d2bbcc60d9/mqtt-overview.webp)

## Introduction 
-MQTT is a **publish/subscribe** protocol designed for connecting IoT devices
-MQTT is best for lightweight, real-time IoT communications
-Two key components to establish MQTT connection for publishing and subscribing of the messages are **MQTT Clients** and **MQTT Broker**

## MQTT Broker
-The MQTT broker is an intermediary between senders and receivers, dispatching messages to the appropriate recipients
-MQTT clients publish messages to the broker, and other clients subscribe to specific topics to receive messages.
- Each MQTT message includes a topic, and clients subscribe to topics of their interest. The MQTT broker maintains a subscriber list and uses it to deliver messages to the relevant clients.

## MQTT Client 
-MQTT clients connect to an MQTT broker to publish and subscribe to topics, enabling efficient data exchange between devices, sensors, and servers.

## Communication 
-MQTT was created with a focus on sending small amounts of data over unreliable networks with limited bandwidth and connectivity (HTTP has higher bandwidth which make MQTT better for the IOT)
-MQTT uses a binary message format for communication between clients and brokers, to reduce the size of messages and increase the efficiency of communication. 
![alt text](https://www.hivemq.com/sb-assets/f/243938/1896x284/d451428710/mqtt-fixed-header-format-example-from-oasis.webp)

## Messaging Model 
MQTT’s messaging model is based on topics and subscriptions. Topics are strings that messages are published to and subscribed to. Topics are hierarchical and can contain multiple levels separated by slashes, like a file path as shown below.
``` myhome/kitchen/smartdishwasher ```

## Supscription WildCards
MQTT also supports wildcards, which can be used to subscribe to multiple topics that match a certain pattern. The two types of wildcards are the single-level wildcard (+), which matches a single level in a topic, and the multi-level wildcard (#), which matches all levels after the specified level in a topic.

## Message persistance 
-**Non-persistent:** This is the default option in MQTT. In this mode, messages are not stored on the server and are lost if the server or network fails. This mode is suitable for situations where messages are not critical and can be easily regenerated
-**Queued persistent:** In this mode, messages are stored on the server until they are delivered to the subscriber. If the subscriber is not available, messages are queued until the subscriber reconnects. 
-**Persistent with acknowledgment:** This mode provides the highest level of message persistence. In this mode, messages are stored on the server until they are delivered to the subscriber, and the subscriber must acknowledge receipt of the message. If the subscriber does not acknowledge receipt, the message is re-sent until the subscriber acknowledges receipt. `This mode is useful when it is critical to ensure that messages are received and processed by the subscriber.`

## Filterinng Messages 
-the broker filters the messages based on the MQTT topic or subject. The subscribing clients indicate their interest by subscribing to specific topics, and the broker routes the messages to the appropriate subscribers based on the topic hierarchy.
![alt test](https://www.hivemq.com/sb-assets/f/243938/1200x600/7ac145aaf9/image-2-mqtt-topic-tree-matching-challenges-best-practices-explained.webp)

## Connection Establishing 
-The MQTT protocol is based on TCP/IP, meaning the client and the broker must have a TCP/IP stack.

-**To initiate a connection,** the client sends a CONNECT message to the broker, which responds with a CONNACK message and a status code. Once the connection is established, the broker keeps it open until the client sends a disconnect command or the connection breaks.
![alt text](https://www.hivemq.com/sb-assets/f/243938/550x171/81094f3d9d/connect-flow.gif)

## Connack Messages 
Return Code	Return Code Response
0	Connection accepted
1	Connection refused, unacceptable protocol version
2	Connection refused, identifier rejected
3	Connection refused, server unavailable
4	Connection refused, bad user name or password
5	Connection refused, not authorized