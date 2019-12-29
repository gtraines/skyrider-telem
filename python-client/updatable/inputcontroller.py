import pygame
from pygame import locals as pyg_const
from pygame import event
from updatable.updatableabc import UpdatableAbc

class InputController(UpdatableAbc):
    
    KEYDOWN_HANDLERS = { }
    
    KEYUP_HANDLERS = { }
    
    def __init__(self, keydown_override_handlers=None, keyup_override_handlers=None):
        self._keydown_handlers = self.KEYDOWN_HANDLERS
        self._keyup_handlers = self.KEYUP_HANDLERS
        
        if keydown_override_handlers:
            for keydown_key in keydown_override_handlers.keys():
                self._keydown_handlers[keydown_key] = keydown_override_handlers[keydown_key]
        
        if keyup_override_handlers:
            for keyup_key in keyup_override_handlers.keys():
                self._keyup_handlers[keyup_key] = keyup_override_handlers[keyup_key]
    
    def update(self, context):
        self.process_input_events(context)
          
    def process_input_events(self, context):
        """
        The pygame.eventpygame module for interacting with events and queues queue gets pygame.KEYDOWN and pygame.KEYUP events when the keyboard buttons are pressed and released. Both events have key and mod attributes.

key: an integer ID representing every key on the keyboard
mod: a bitmask of all the modifier keys that were in a pressed state when the event occurred
The pygame.KEYDOWN event has the additional attributes unicode and scancode.

unicode: a single character string that is the fully translated character entered, this takes into account the shift and composition keys
scancode: the platform-specific key code, which could be different from keyboard to keyboard, but is useful for key selection of weird keys like the multimedia keys
"""
        for evt in event.get():
            self._process_event(evt, context)
            
    def _process_event(self, evt, context):
        
        if evt.type == pyg_const.QUIT:
            context.done = True
        # User pressed down on a key
        elif evt.type == pyg_const.KEYDOWN:
            self._process_key_down(evt, context)
        # User let up on a key
        elif evt.type == pyg_const.KEYUP:
            self._process_key_up(evt, context)
    
    def _process_key_down(self, evt, context):
        # Figure out if it was an arrow key. If so
            # adjust speed.
        """ examples:
            if event_key == pyg_const.K_LEFT:
                x_speed = -3
            elif event_key == pyg_const.K_RIGHT:
                x_speed = 3
            elif event_key == pyg_const.K_UP:
                y_speed = -3
            elif event_key == pyg_const.K_DOWN:
                y_speed = 3
        """
        can_handle = evt.key in self._keydown_handlers.keys()
        if can_handle:
            handle_func = self._keydown_handlers[evt.key]
            handle_func(context)
        else:
            input_message = f'Received key_down event: {str(evt.key)} without handler'
            print(input_message)
            context.input_message = input_message 
        
    def _process_key_up(self, evt, context):
        # If it is an arrow key, reset vector back to zero
        """
        examples:
        if event_key == pyg_const.K_LEFT or event_key == pyg_const.K_RIGHT:
            x_speed = 0
        elif event_key == pyg_const.K_UP or event_key == pyg_const.K_DOWN:
            y_speed = 0
        """
        can_handle = evt.key in self._keyup_handlers.keys()
        if can_handle:
            handle_func = self._keyup_handlers[evt.key]
            handle_func(context)
        else:
            input_message = f'Received keyup event: {str(evt.key)} without handler'
            print(input_message)
            context.input_message = input_message


if __name__ == "__main__":
    pygame.init()
    cntrlr = InputController()
    ctxt = TestGameContext()
    while not ctxt.done:
        cntrlr.process_input_events(ctxt)
