import sys
import pygame

from ... import ColorsRgb
from ...utils.sound import Sound
from ...uielements.background import LcarsBackgroundImage
from ...uielements.gifimage import LcarsGifImage
from ...uielements.screen import LcarsScreen
from .lcars_widgets import LcarsText, LcarsButton


class ScreenAuthorize(LcarsScreen):
    
    def __init__(self, ui_config):
        self._ui_config = ui_config
        LcarsScreen.__init__(self)
            
    def setup(self, all_sprites):
        all_sprites.add(LcarsBackgroundImage("assets/lcars_screen_2.png", self._ui_config),
                        layer=0)

        all_sprites.add(LcarsGifImage("assets/gadgets/stlogorotating.gif", (103, 369), self._ui_config, 50), 
                         layer=0)        

        all_sprites.add(LcarsText(ColorsRgb.ORANGE, (270, -1), "AUTHORIZATION REQUIRED", self._ui_config, 2),
                        layer=0)

        all_sprites.add(LcarsText(ColorsRgb.BLUE, (330, -1), "ONLY AUTHORIZED PERSONNEL MAY ACCESS THIS TERMINAL", 
                                  self._ui_config, 1.5),
                        layer=1)

        all_sprites.add(LcarsText(ColorsRgb.BLUE, (360, -1), "TOUCH TERMINAL TO PROCEED", self._ui_config, 1.5),
                        layer=1)
        
        #all_sprites.add(LcarsText(colours.BLUE, (390, -1), "FAILED ATTEMPTS WILL BE REPORTED", 1.5),layer=1)


        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (320, 130), "1", self._ui_config, self.num_1), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (370, 130), "2", self._ui_config, self.num_2), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (320, 270), "3", self._ui_config, self.num_3), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (370, 270), "4", self._ui_config, self.num_4), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (320, 410), "5", self._ui_config, self.num_5), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (370, 410), "6", self._ui_config, self.num_6), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (320, 550), "7", self._ui_config, self.num_7), layer=2)
        all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, (370, 550), "8", self._ui_config, self.num_8), layer=2)

        if self._ui_config.debug_mode_on:
            all_sprites.add(LcarsButton(ColorsRgb.GREY_BLUE, 
                                        (0, 770), 
                                        "X", 
                                        self._ui_config, 
                                        self.exitHandler, 
                                        (30, 30)), 
                            layer=2)
        
        self.layer1 = all_sprites.get_sprites_from_layer(1)
        self.layer2 = all_sprites.get_sprites_from_layer(2)

        # sounds
        Sound("assets/audio/panel/215.wav", self._ui_config).play()
        self.sound_granted = Sound("assets/audio/accessing.wav", self._ui_config)
        self.sound_beep1 = Sound("assets/audio/panel/201.wav", self._ui_config)
        self.sound_denied = Sound("assets/audio/access_denied.wav", self._ui_config)
        self.sound_deny1 = Sound("assets/audio/deny_1.wav", self._ui_config)
        self.sound_deny2 = Sound("assets/audio/deny_2.wav", self._ui_config)

        ############
        # SET PIN CODE WITH THIS VARIABLE
        ############
        self.pin = 1234
        ############
        self.reset()

    def reset(self):
        # Variables for PIN code verification
        self.correct = 0
        self.pin_i = 0
        self.granted = False
        for sprite in self.layer1: sprite.visible = True
        for sprite in self.layer2: sprite.visible = False

    def handleEvents(self, event, fpsClock):
        if event.type == pygame.MOUSEBUTTONDOWN:
            # Play sound
            self.sound_beep1.play()

        if event.type == pygame.MOUSEBUTTONUP:
            if (not self.layer2[0].visible):
                for sprite in self.layer1: sprite.visible = False
                for sprite in self.layer2: sprite.visible = True
                Sound("assets/audio/enter_authorization_code.wav", self._ui_config).play()
            elif (self.pin_i == len(str(self.pin))):
                # Ran out of button presses
                if (self.correct == 4):
                    self.sound_granted.play()
                    from .main import ScreenMain
                    self.loadScreen(ScreenMain(self._ui_config))
                else:
                    self.sound_deny2.play()
                    self.sound_denied.play()
                    self.reset()

        return False

    def num_1(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '1':
            self.correct += 1

        self.pin_i += 1

    def num_2(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '2':
            self.correct += 1

        self.pin_i += 1

    def num_3(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '3':
            self.correct += 1

        self.pin_i += 1

    def num_4(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '4':
            self.correct += 1

        self.pin_i += 1

    def num_5(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '5':
            self.correct += 1

        self.pin_i += 1

    def num_6(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '6':
            self.correct += 1

        self.pin_i += 1

    def num_7(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '7':
            self.correct += 1

        self.pin_i += 1

    def num_8(self, item, event, clock):
        if str(self.pin)[self.pin_i] == '8':
            self.correct += 1

        self.pin_i += 1

    def exitHandler(self, item, event, clock):
        sys.exit()
