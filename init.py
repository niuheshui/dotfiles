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

def create_sofwlink(filename, linkpath):
    call(f'rm -rf {linkpath}', shell = True)
    call(f'ln -s {filename} {linkpath}', shell = True)

for d in conf:
    f = f'{BASEPATH + "/" + d["filename"]}'
    l = d['linkpath']
    create_sofwlink(f, l)
