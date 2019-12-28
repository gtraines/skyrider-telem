class AircraftStatusConstants:
    ADJUST_GYROSCOPE = 0x6
    FLIP = 0x0
    FLIP_HOLD_TIME = 0x8
    FLIP_ONCE = 0x7
    KEY_HOLD_TIME = 0x32
    LAND = 0x4
    PRE_TURN = 0x2
    RETURN = 0x1
    SELF_ROTATE = 0x8
    STOP = 0x5
    TAKEOFF = 0x3

class AircraftStatus:
    
    def __init__(self):
        self._alt_hold = 0
        
        self._flip_once = 0
        self._flip_once_hold_count = 0
        
        self._headless = 0
        self._light_on = 0
        
        self._one_key_adjust = 0
        self._one_key_adjust_hold_count = 0
        self._one_key_flip = 0
        self._one_key_land = 0
        self._one_key_land_hold_count = 0
        self._one_key_pre_turn = 0
        self._one_key_return = 0
        self._one_key_stop = 0
        self._one_key_stop_hold_count = 0
        self._one_key_takeoff = 0
        self._one_key_takeoff_hold_count = 0
        
        self._pitch = 0
        self._pitch_trim = 0
        self._protocol = 0
        
        self._roll = 0
        self._roll_trim = 0
        
        self._self_rotating = False
        self._speed = 0
        
        self._throttle = 0
        self._trimmed_yaw = 0
        
        self._yaw = 0
        self._yaw_rotate = 0
        self._yaw_trim = 0

    @property
    def flip_once(self):
        return self._flip_once
    
    @property
    def speed(self):
        return self._speed
    
    @property
    def trimmed_yaw(self):
        return self._trimmed_yaw
    
    @property
    def yaw(self):
        return self._yaw
    
    @property
    def yaw_trim(self):
        return self._yaw_trim
