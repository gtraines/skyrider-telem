import pygame


class ScalableScreen:
    
    def __init__(self, background_image_filename):
        self.background_image_original = pygame.image.load(background_image_filename)
        self.background_image = pygame.transform.scale(self.background_image_original,
                                                       (500, 500))

    