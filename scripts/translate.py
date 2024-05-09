#!/usr/bin/env python3

'''
https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl=zh-cn&dt=t&q=Worldwide observations confirm nearby ‘lensing’ exoplanet
'''

from parse_args import parse_arg
from color_print import BLUE, GREEN 
import requests
import sys
import json
from pprint import pprint

url = 'https://translate.google.com/translate_a/single?'
param = 'client=gtx&sl=en&tl=zh-CN&dt=t&q='

text = parse_arg(sys.argv)
r = requests.get(url + param + text)
if r.status_code != 200:
    print('Request failed. status code: %d' % r.status_code)
else:
    data = json.loads(r.text)
    for line in data[0]:
        print(BLUE(line[1].rstrip()))
        print(GREEN(line[0].rstrip()))
