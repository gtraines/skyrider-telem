import socket
import sys

def run_client_echo(server_ip, server_port, message):
    
    try:
        # Send data
        print(f'sending {message}')
        sent = socket_connection.sendto(message, server_address)

        # Receive response
        print('waiting to receive')
        data, server = sock.recvfrom(4096)
        print(f'received {data}')
    except Exception as exc:
        print(exc)
    finally:
        print('closing socket')
        socket_connection.close()

    return 0

class ReceiveSocket:
        
    def __init__(self, server_ip, server_port):
        self._is_running = False
        self._server_ip = server_ip
        self._server_port = server_port
        server_address = (self._server_ip, self._server_port)
        self._socket_connection = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        
    def wait_receive(self):
        data, server = self._socket_connection.recvfrom(4096)
        return data

    def close(self):
        self._socket_connection.close()
        
    @property
    def is_running(self):
        return self._is_running
    
    