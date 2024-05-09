ESC, END = '\033[', '\033[0m'
def make_color(color_code):
    def color_text(text):
        return f'{ESC}01;{color_code}m{text}{END}'
    return color_text

BLACK    = make_color(30)
RED      = make_color(31)
GREEN    = make_color(32)
YELLOW   = make_color(33)
BLUE     = make_color(34)
MANGENTA = make_color(35)
CYAN     = make_color(36)
WHITE    = make_color(37)
