
""" 
UDP messages must fit within a single packet 
  (for IPv4, that means they can only hold 
  65,507 bytes because the 65,535 byte packet also includes header information) 
"""

import socket
import sys

def get_connection(ip_address, port_number):
    drone_address = (ip_address, port_number)
    print(f'Starting connection at: {ip_address}:{port_number}')
    
    cxn_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    cxn_socket.bind(drone_address)
    return cxn_socket

def run_server_echo(socket_connection):
    while True:
        print('Waiting to receive message')
        data, addr = socket_connection.recvfrom(4096)
        
        print(f'Received {len(data)} bytes from {addr}')
        print(f'Message content: {data}')
        
        if data:
            print('Echoing...')
            sent_bytes_length = socket_connection.sendto(data, addr)
            print(f'Received {sent_bytes_length} to {addr}')

if __name__ == "__main__":
    cxn = get_connection('192.168.51.1', 5004) 
       

