
            
class UiConfig:
    def __init__(self, 
                 ui_dimensions, 
                 sound_on=True, 
                 refresh_rate_hz=60, 
                 placement_mode_on=True, 
                 debug_mode_on=True):
        
        self._ui_dimensions = ui_dimensions
        self._sound_on = sound_on
        self._refresh_rate_hz = refresh_rate_hz
        self._placement_mode_on = placement_mode_on
        self._debug_mode_on = debug_mode_on
        
    @property
    def debug_mode_on(self):
        return self._debug_mode_on
    
    @property
    def placement_mode_on(self):
        return self._placement_mode_on
    
    @property
    def refresh_rate_hz(self):
        return self._refresh_rate_hz
    
    @property
    def sound_on(self):
        return self._sound_on
    
    @property
    def ui_dimensions(self):
        return self._ui_dimensions