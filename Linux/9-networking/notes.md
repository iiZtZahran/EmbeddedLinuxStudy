***$cat /etc/services | grep "ssh"*** --> ssh		22/tcp				# SSH Remote Login Protocol
where ssh uses tcp on port 22 

***$ifconfig*** --> gives NICs data 

***Loopback:*** --> used for interprocess communication where proceess run on same machine 


***The lifecycle of sending data from a source to a destination using Ethernet involves several steps, from preparing the data to delivering it over a network. Here’s a simplified overview:***

### 1. Data Preparation
- **Application Layer**: The data originates from an application (e.g., a web browser). The application prepares the data for transmission, often in the form of a message or file.

### 2. Data Segmentation
- **Transport Layer**: The data is divided into smaller segments, typically by the Transmission Control Protocol (TCP) or User Datagram Protocol (UDP). Each segment is encapsulated with headers containing necessary control information, such as source and destination ports.

### 3. Packet Formation
- **Network Layer**: The segments are encapsulated into packets by the Internet Protocol (IP). Each packet has an IP header that includes the source and destination IP addresses.

### 4. Frame Creation
- **Data Link Layer**: The packets are further encapsulated into frames. At this stage, Ethernet frames are created, which include:
  - **Destination MAC Address**: The hardware address of the destination device.
  - **Source MAC Address**: The hardware address of the sending device.
  - **Ethernet Type**: Indicates the protocol of the encapsulated data (e.g., IPv4).
  - **Frame Check Sequence (FCS)**: A checksum for error detection.

### 5. Physical Transmission
- **Physical Layer**: The frames are converted into electrical signals (or optical signals for fiber) and transmitted over the Ethernet medium (copper cables, fiber optics, etc.). This is where the actual physical transfer of data occurs.

### 6. Receiving the Frame
- **Physical Layer (Receiving Side)**: The destination device receives the signals and converts them back into frames.

### 7. Frame Processing
- **Data Link Layer (Receiving Side)**: The receiving device examines the MAC address in the frame header to determine if the frame is intended for it. If so, it checks the FCS for errors. If no errors are detected, the frame is accepted.

### 8. Packet Extraction
- **Network Layer (Receiving Side)**: The frame is stripped to extract the encapsulated packet, which includes the IP header and payload.

### 9. Segment Reconstruction
- **Transport Layer (Receiving Side)**: The IP packet is processed, and the segments are reassembled if they were fragmented. The transport layer checks for errors and ensures data integrity.

### 10. Application Layer Delivery
- **Application Layer (Receiving Side)**: Finally, the reassembled data is delivered to the appropriate application, completing the process.

### Summary
This lifecycle involves multiple layers of the OSI model, where each layer adds or processes headers and manages error detection and correction. The combination of these layers allows reliable and organized communication over Ethernet networks.