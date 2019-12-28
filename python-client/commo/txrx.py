
from .receivesocket import ReceiveSocket
from .jpegreceiver import JpegReceiver


class TxRx:
    _data_type_ack = 0x2
    _data_type_cmd = 0x4
    _data_type_jpeg = 0x1
    
    def __init__(self, socket, receive_socket):
        self._lock_is_held_before_pause = False
        self._is_running = False
        self._ack_receive_listener = None
    
        
        self._socket = socket
        self._receive_socket = receive_socket
        self._frame_buffer = bytearray(4096)
        
    def get_jpeg_callback(self):
        """
        ;->setCallback(Lapp/panchip_weinikang/planecontroller/common/JPEGFactory$JPEGCallback;)V
        # virtual methods
            .method public abstract yield(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
            .end method
        """
        
        jpeg_receiver = lambda payload: print(str(payload))
        
        return jpeg_receiver
    
    
    
    
    