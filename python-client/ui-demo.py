from usrinterface.examples.screens.authorize import ScreenAuthorize
from usrinterface import UserInterface, DEFAULT_UI_CONFIG

if __name__ == "__main__":
    firstScreen = ScreenAuthorize(DEFAULT_UI_CONFIG)
    
    ui = UserInterface(firstScreen, DEFAULT_UI_CONFIG)

    while (True):
        ui.tick()
