#!/usr/bin/env python3
from subprocess import getoutput, call
import os
import json

BASEPATH = os.path.dirname(os.path.abspath(__file__))
HOME = getoutput('echo $HOME')
#print(BASEPATH)
#print(HOME)

conf_file = open(f'{BASEPATH}/config.json')
conf_text = conf_file.read()
conf_file.close()

conf = json.loads(conf_text)
#print(conf)

is_link = lambda path: not call(f'test -L {path}', shell=True)


'''
def make_escape_sequences(CSI):
    ESC, END = '\033[', '\033[0m'
    return lambda TEXT: f'{ESC}{CSI}{TEXT}{END}'
'''

ESC, END = '\033[', '\033[0m'
make_escape_sequences = lambda CSI, text: f'{ESC}{CSI}{text}{END}'
make_24color_text = lambda r, g, b, text: make_escape_sequences(f'38;2;{r};{g};{b}m', text)
make_color_text = lambda color, text: make_escape_sequences(f'01;{color}m', text)

BLACK   = 30
RED     = 31
GREEN   = 32
YELLOW  = 33
BLUE    = 34
MANGENTA = 35
CYAN    = 36
WHITE   = 37


def create_sofwlink(enable, filename, linkpath):
    if enable or is_link(linkpath):
        print(make_color_text(RED, '- %s' % linkpath))
        call(f'rm -rf {linkpath}', shell = True)
    if enable:
        print(make_color_text(GREEN, '+ %s -> %s' % (linkpath, filename)))
        call(f'ln -s {filename} {linkpath}', shell = True)

for d in conf:
    e = d['enable'] 
    f = BASEPATH + '/' + d['filename']
    l = d['linkpath']
    create_sofwlink(e, f, l)
