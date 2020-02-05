from datetime import datetime

from .lcars_widgets import *
from ... import ColorsRgb
from ...uielements.background import LcarsBackgroundImage, LcarsImage
from ...uielements.gifimage import LcarsGifImage
from ...uielements.screen import LcarsScreen

def get_ip_address_string():
    return "192.168.1.0"

class ScreenMain(LcarsScreen):
    def __init__(self, ui_config):
        self._ui_config = ui_config
        LcarsScreen.__init__(self)
        
    def setup(self, all_sprites):
        all_sprites.add(LcarsBackgroundImage("assets/lcars_screen_1b.png", 
                                             self._ui_config),
                        layer=0)

        # panel text
        all_sprites.add(LcarsText(ColorsRgb.BLACK, (15, 44), 
                                  "LCARS 105", 
                                  self._ui_config),
                        layer=1)
                        
        all_sprites.add(LcarsText(ColorsRgb.ORANGE, 
                                  (0, 135),
                                  "HOME AUTOMATION", 
                                  self._ui_config, 2),
                        layer=1)
        all_sprites.add(LcarsBlockMedium(ColorsRgb.RED_BROWN, 
                                         (145, 16), 
                                         "LIGHTS", 
                                         self._ui_config),
                        layer=1)
        all_sprites.add(LcarsBlockSmall(ColorsRgb.ORANGE, 
                                        (211, 16),
                                        "CAMERAS", 
                                        self._ui_config),
                        layer=1)
        all_sprites.add(LcarsBlockLarge(ColorsRgb.BEIGE, 
                                        (249, 16),
                                        "ENERGY", 
                                        self._ui_config),
                        layer=1)

        self.ip_address = LcarsText(ColorsRgb.BLACK, 
                                    (444, 520),
                                    get_ip_address_string(), 
                                    self._ui_config)
        
        all_sprites.add(self.ip_address, layer=1)

        # info text
        all_sprites.add(LcarsText(ColorsRgb.WHITE, (192, 174), 
                                  "EVENT LOG:", 
                                  self._ui_config, 1.5),
                        layer=3)
        all_sprites.add(LcarsText(ColorsRgb.BLUE, (244, 174), 
                                  "2 ALARM ZONES TRIGGERED", 
                                  self._ui_config, 1.5),
                        layer=3)
        all_sprites.add(LcarsText(ColorsRgb.BLUE, (286, 174), 
                                  "14.3 kWh USED YESTERDAY", 
                                  self._ui_config, 1.5),
                        layer=3)
        all_sprites.add(LcarsText(ColorsRgb.BLUE, (330, 174), 
                                  "1.3 Tb DATA USED THIS MONTH", 
                                  self._ui_config, 1.5),
                        layer=3)
        self.info_text = all_sprites.get_sprites_from_layer(3)

        # date display
        self.stardate = LcarsText(ColorsRgb.BLUE, 
                                  (12, 380), 
                                  "STAR DATE 2311.05 17:54:32", 
                                  1.5)
        
        self.lastClockUpdate = 0
        all_sprites.add(self.stardate, layer=1)

        # buttons
        all_sprites.add(LcarsButton(ColorsRgb.RED_BROWN, 
                                    (6, 662), 
                                    "LOGOUT",
                                    self._ui_config, 
                                    self.logoutHandler),
                        layer=4)
        all_sprites.add(LcarsButton(ColorsRgb.BEIGE, 
                                    (107, 127), 
                                    "SENSORS", 
                                    self._ui_config, 
                                    self.sensorsHandler),
                        layer=4)
        all_sprites.add(LcarsButton(ColorsRgb.PURPLE, (107, 262), "GAUGES", 
                                    self._ui_config, 
                                    self.gaugesHandler),
                        layer=4)
        all_sprites.add(LcarsButton(ColorsRgb.PEACH, (107, 398), "WEATHER", 
                                    self._ui_config, 
                                    self.weatherHandler),
                        layer=4)
        all_sprites.add(LcarsButton(ColorsRgb.PEACH, (108, 536), "HOME", 
                                    self._ui_config, 
                                    self.homeHandler),
                        layer=4)

        # gadgets
        all_sprites.add(LcarsGifImage("assets/gadgets/fwscan.gif", (277, 556), self._ui_config, 100), layer=1)

        self.sensor_gadget = LcarsGifImage("assets/gadgets/lcars_anim2.gif", (235, 150), self._ui_config, 100)
        self.sensor_gadget.visible = False
        all_sprites.add(self.sensor_gadget, layer=2)

        self.dashboard = LcarsImage("assets/gadgets/dashboard.png", (187, 232), self._ui_config)
        self.dashboard.visible = False
        all_sprites.add(self.dashboard, layer=2)

        self.weather = LcarsImage("assets/weather.jpg", (188, 122), self._ui_config)
        self.weather.visible = False
        all_sprites.add(self.weather, layer=2)

        #all_sprites.add(LcarsMoveToMouse(colours.WHITE), layer=1)
        self.beep1 = SoundEffect("assets/audio/panel/201.wav", self._ui_config)
        SoundEffect("assets/audio/panel/220.wav", self._ui_config).play()

    def update(self, screenSurface, fpsClock):
        if pygame.time.get_ticks() - self.lastClockUpdate > 1000:
            self.stardate.setText("STAR DATE {}".format(datetime.now().strftime("%d%m.%y %H:%M:%S")))
            self.lastClockUpdate = pygame.time.get_ticks()
        LcarsScreen.update(self, screenSurface, fpsClock)

    def handleEvents(self, event, fpsClock):
        if event.type == pygame.MOUSEBUTTONDOWN:
            self.beep1.play()

        if event.type == pygame.MOUSEBUTTONUP:
            return False

    def hideInfoText(self):
        if self.info_text[0].visible:
            for sprite in self.info_text:
                sprite.visible = False

    def showInfoText(self):
        for sprite in self.info_text:
            sprite.visible = True

    def gaugesHandler(self, item, event, clock):
        self.hideInfoText()
        self.sensor_gadget.visible = False
        self.dashboard.visible = True
        self.weather.visible = False

    def sensorsHandler(self, item, event, clock):
        self.hideInfoText()
        self.sensor_gadget.visible = True
        self.dashboard.visible = False
        self.weather.visible = False

    def weatherHandler(self, item, event, clock):
        self.hideInfoText()
        self.sensor_gadget.visible = False
        self.dashboard.visible = False
        self.weather.visible = True

    def homeHandler(self, item, event, clock):
        self.showInfoText()
        self.sensor_gadget.visible = False
        self.dashboard.visible = False
        self.weather.visible = False
        
    def logoutHandler(self, item, event, clock):
        from .authorize import ScreenAuthorize
        self.loadScreen(ScreenAuthorize(self._ui_config))


