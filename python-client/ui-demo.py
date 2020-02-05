from usrinterface.uicontainer import UiContainer

def run_legacy():
    from usrinterface.examples.legacylcars.screens.authorize import ScreenAuthorize
    from usrinterface import UserInterface, DEFAULT_UI_CONFIG
    
    firstScreen = ScreenAuthorize(DEFAULT_UI_CONFIG)
    
    ui = UserInterface(firstScreen, DEFAULT_UI_CONFIG
    while (True):
        ui.tick()


def run_new():
    ui_container = UiContainer()
    

if __name__ == "__main__":
    run_new()
