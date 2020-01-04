from .elementbase import ElementBase
import pygame

class LcarsBackground(ElementBase):
    def update(self, screen):
        screen.blit(self.image, self.rect)
        self.dirty = False        

    def handleEvent(self, event, clock):
        pass
    
class LcarsBackgroundImage(ElementBase):
    def __init__(self, image):
        self.image = pygame.image.load(image).convert()
        ElementBase.__init__(self, None, (0,0), None)
    
    def update(self, screen):
        screen.blit(self.image, self.rect)
        self.dirty = False        

    def handleEvent(self, event, clock):
        pass
    
class LcarsImage(ElementBase):
    def __init__(self, image, pos):
        self.image = pygame.image.load(image).convert()
        ElementBase.__init__(self, None, pos, None)
