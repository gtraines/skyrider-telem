from .framebuffering import FrameBufferPool, FrameBuffer

class JpegReceiver:
    BUFFER_SIZE = 0xf0000
    DUMMY_SEG = b''
    INCOMPLETE_BYTE = None #Original value: -0x1t
    JPEG_HEAD_SEG = [ b'', b'' ]  # I THINK THIS IS AN ARRAY OF BYTES
    JPEG_TAIL_SEG = [ b'', b'' ] # I THINK THIS IS AN ARRAY OF BYTES
    MAX_FRAME_BUFFER_NUM = 0x14
    WAITING_FOR_HEAD = 0x0
    WAITING_FOR_TAIL = 0x1
    
    def __init__(self):
        self._initialized = True
        self._buffer = bytearray(4096)
        # .field private frameBufferPool:Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool;
        self._frame_buffer_pool = None
        self._last_byte = b''
        self._size = 1092
        self._status = 0
        self._supposed_size = 4096
        self._callback_func = lambda x: print("No callback implemented")
        
    def set_callback(self, callback):
        self._callback_func = callback
    
    def receive(self, payload):
        self._callback_func(payload)
        
    def reset(self):
        self.size = 0
        self.status = 0 
        return
    
    def process_raw_data(self, in_bytes, first_int, second_int, third_int):
        self._supposed_size = third_int
        self.status = third_int
        
    
    @property
    def size(self):
        return self._size
    
    @property
    def status(self):
        return self._status
        
    @staticmethod
    def bytes_to_hex(in_bytes, some_int, another_int):
        '''
        returns a string
        '''
        
        out_hex_string = [in_byte.encode("hex") for in_byte in in_bytes]
        return out_hex_string

    @staticmethod
    def convert_byte_to_hex(in_byte):
        '''
        HEX value from byte, IDK why
        '''
        return ''
    
    @staticmethod
    def condition0(in_bytes, some_int, another_int):
        pass
    
    @staticmethod
    def condition1(in_bytes, some_int, another_int):
        pass
    
    @staticmethod
    def condition2(arg1, arg2):
        pass
    
    @staticmethod
    def _search_head(bytes_arr, some_int, another_int):
        return ''

    @staticmethod 
    def search_tail(in_bytes, some_int, another_int):
        last_byte = in_bytes[-1]
        
        return ''