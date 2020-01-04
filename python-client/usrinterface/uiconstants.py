import pygame
from .config import UiConfig


class ColorsRgb:
    BEIGE = (255, 204, 153)
    BLACK = (0,0,0)
    BLUE = (153, 153, 255)
    DARK_BLUE = (0,0,128)
    DARK_GREEN = (0,128,0)
    DARK_RED = (128,0,0)
    GRAY = (128,128,128)
    GREEN = (0,255,0)
    GREY_BLUE = (153, 153, 204)
    GRID_YELLOW = (128,128,0)
    INDIGO = (0,0,255)
    MAGENTA = (255,200,200)
    ORANGE = (255, 153, 0)
    PEACH = (255, 153, 102)
    PINK = (204, 102, 153)
    PURPLE = (204, 153, 204)
    RED_BROWN = (204, 102, 102)
    RED = (255,0,0)
    WHITE = (255,255,255)
    YELLOW = (255,255,0)


class RefreshRate:
    HIGH = 60
    LOW = 30


class UiDimensions:
    SMALL = (800, 480)
    MEDIUM = (1366, 768)
    FULL_SCREEN = pygame.FULLSCREEN

DEFAULT_UI_CONFIG = UiConfig(UiDimensions.SMALL)    