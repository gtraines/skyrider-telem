from screens.authorize import ScreenAuthorize
from ..usrinterface import UserInterface, DEFAULT_UI_CONFIG
import config

if __name__ == "__main__":
    firstScreen = ScreenAuthorize()
    ui = UserInterface(firstScreen, DEFAULT_UI_CONFIG)

    while (True):
        ui.tick()
