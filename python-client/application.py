import pygame
from updatable import InputController, DisplayController
from app import  TestGameContext
from app.settings import GlobalSettings


class Application:
    
    def __init__(self):
        pygame.init()
        self._updatable_components = [
            InputController(),
            DisplayController()
        ]
        
        self._context = TestGameContext()
        self._instance_settings = GlobalSettings(self._context)
        
        self._initialized = True
    
    def run(self):
        while not self._context.done:
            for component in self._updatable_components:
                component.update(self._context)

            # --- Limit to 60 frames per second
            self._context.update_timer.tick(60)
        
if __name__ == "__main__":
    application = Application()
    application.run()