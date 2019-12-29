import pygame

class TestGameContext:
    
    def __init__(self):
        self.done = False
        self.input_message = ''
        self.update_timer = pygame.time.Clock()
