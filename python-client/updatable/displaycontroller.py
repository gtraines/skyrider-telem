import pygame
from core.updatableabc import UpdatableAbc

class ColorConsts:
    # Define some colors
    BLACK    = (   0,   0,   0)
    WHITE    = ( 255, 255, 255)
    GREEN    = (   0, 255,   0)
    RED      = ( 255,   0,   0)
    BLUE     = (   0,   0, 255)

class DisplayController(UpdatableAbc):

    
    def __init__(self):
        
        self._screen_size = (800, 600)
        self._screen_showing = False
        self._font = pygame.font.SysFont('Calibri', 25, True, False)
        self._screen = None
        self._initialized = True
        
    def update(self, context):     
        
        if not self._screen_showing:
            self._create_new_screen()
        # Don't put other drawing commands
        # above this, or they will be erased with this command.
        self._update_screen_buffer(context)
        self._show_updated_screen(context)
        
    def _create_new_screen(self):
        if not self._screen_showing:
            self._screen = pygame.display.set_mode(self._screen_size)
            self._screen_showing = True
            
    def _clear_screen_buffer(self, context):
        self._screen.fill(ColorConsts.BLUE)
    
    def _update_screen_buffer(self, context):
        self._clear_screen_buffer(context)
        self._draw_components(context)
        
    def _draw_components(self, context):
        # Render the text. "True" means anti-aliased text.
        
        text = self._font.render(context.input_message, True, ColorConsts.WHITE)
        
        # Put the image of the text on the screen at 250x250
        self._screen.blit(text, [250, 250])
        
    def _show_updated_screen(self, context):
        pygame.display.flip()
        