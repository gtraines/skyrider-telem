from .uiconstants import ColorsRgb

class ElementStyle:
    def __init__(self):
        self._bg_color = ColorsRgb.BLACK
        self._fg_color = ColorsRgb.WHITE


class Background: 
    BG_COLOR = ColorsRgb.BLACK


class ColorSchemeRgb:
    def __init__(self):
        self._elements_styles = {}
    
    def add_element_style(self, element_name, element_style):
        self._elements_styles[element_name] = element_style
    
    def get_element_style(self, element_name):
        if element_name in self._elements_styles.keys():
            return self._elements_styles[element_name]
        else:
            return ElementStyle()
