import socket
import sys
from io import BytesIO


"""  
  UDP messages must fit within a single packet 
  (for IPv4, that means they can only hold 
  65,507 bytes because the 65,535 byte packet also includes header information) 
"""

def get_server_connection(ip_address, port_number):
    drone_address = (ip_address, port_number)
    print(f'Starting connection at: {ip_address}:{port_number}')
    
    cxn_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    cxn_socket.bind(drone_address)
    return cxn_socket


def run_server_echo(server_ip, server_port):
    socket_connection = get_server_connection(ip_address, server_port)
    while True:
        print('Waiting to receive message')
        data, addr = socket_connection.recvfrom(4096)
        
        print(f'Received {len(data)} bytes from {addr}')
        print(f'Message content: {data}')
        
        if data:
            print('Echoing...')
            sent_bytes_length = socket_connection.sendto(data, addr)
            print(f'Received {sent_bytes_length} to {addr}')

            
def run_client_echo(server_ip, server_port, message):
    socket_connection = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    server_address = (server_ip, server_port)
    try:
        # Send data
        print(f'sending {message}')
        bytes_message = convert_str_to_bytes(message)
        sent = socket_connection.sendto(bytes_message, server_address)

        # Receive response
        print('waiting to receive')
        data, server = socket_connection.recvfrom(4096)
        print(f'received {data}')
    except Exception as exc:
        print(exc)
    finally:
        print('closing socket')
        socket_connection.close()

    return 0

def convert_str_to_bytes(in_string):
    out_bytes = bytearray()
    out_bytes.extend(map(ord, in_string))
    return out_bytes
    
if __name__ == "__main__":
    run_client_echo('192.168.51.1', 5004, 'msg') 
       

