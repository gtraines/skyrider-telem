
class Commands:
    # .field public static final CMD_DISABLE_CAMERA:[B
    CMD_DISABLE_CAMERA = bytearray([ b'', b'' ])
    # .field public static final CMD_ENABLE_CAMERA:[B
    CMD_ENABLE_CAMERA = bytearray([ b'', b'' ])
    # .field public static final CMD_HANDSHAKE:B = -0x1t
    CMD_HANDSHAKE = b'-\x01' # -0x1t
    # .field public static final CMD_STOP_CTRL:B = -0x1t
    CMD_STOP_CTRL = b'-\x01' # -0x1t 
    # .field public static final CMD_TAKE_PHOTO:B = 0x1t
    CMD_TAKE_PHOTO = b'\x01' # 0x1t
    # .field public static final CMD_TAKE_VIDEO:B = 0x2t
    CMD_TAKE_VIDEO = b'\x02' # 0x2t
    # .field public static final CMD_TYPE_CAMERA:B = 0x1t
    CMD_TYPE_CAMERA = b'\x01' # 0x1t
    # .field public static final CMD_TYPE_INVALID:B = 0x0t
    CMD_TYPE_INVALID = b'\x00' # 0x0t
    # .field public static final CMD_TYPE_PLANE:B = 0x2t
    CMD_TYPE_PLANE = b'\x02' # 0x2t
    # .field public static final CMD_TYPE_REMOTE_CTRL:B = 0x4t
    CMD_TYPE_REMOTE_CTRL = b'\x04' # 0x4t
    # .field public static final COMMAND_MAX_LENGTH:I = 0x8
    COMMAND_MAX_LENGTH = 0x8 # 0x8
    
    @staticmethod
    def create_handshake_command():
        return CommandInstance(Commands.CMD_HANDSHAKE, bytearray([0x0]))
    
    
class CommandInstance:    
    def __init__(self, cmd_type_byte, cmd_payload):
        self._cmd_type_byte = cmd_type_byte
        self._cmd_payload = cmd_payload
    
    @property
    def type(self):
        return self._cmd_type_byte
    
    @property
    def payload(self):
        return self._cmd_payload
