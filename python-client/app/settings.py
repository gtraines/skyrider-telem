

class GlobalSettings:
    PROTOCOL_PVTM = 0x1
    PROTOCOL_YD = 0
    _auto_save = False
    _control_protocol = 0x1
    _pitch_trim = 1
    _roll_trim = 1
    _yaw_trim = 1
    _right_hand_mode = False    
    
    def __init__(self, context):
        self._context = context
        self._control_protocol_names = [
            'PVTM-01',
            'PVTM-02'
        ]
        self._current_control_protocol = self._control_protocol

    def get_setting(self, setting_name):
        return self._context[setting_name]
    
    @property
    def pitch_trim(self):
        return self._pitch_trim
    
    @property
    def yaw_trim(self):
        return self._yaw_trim
    
    @property
    def roll_trim(self):
        return self._roll_trim
    
    @property
    def control_protocol_names(self):
        return self._control_protocol_names
    
    def reset_flight_arguments(self):
        # idk yet
        pass
    
    def change_auto_save_preference(self, new_value):
        self._auto_save = new_value
        self.reset_flight_arguments()
    
    def set_control_protocol(self, new_protocol_int):
        self._current_control_protocol = new_protocol_int