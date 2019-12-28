
class FrameBufferPool:
    
    def __init__(self, first_int, second_int):
        self._v1 = first_int or 0x5
        self._v2 = second_int or 0x14


class FrameBuffer:
    
    def __init__(self):
        self._length = 0
        
    @property
    def length(self):
        return self._length
