import sys
from os import path
from pprint import pprint

help_msg = '''usage translate [option]

    -           Read from standard input
    -f file     Read from file 
    -h          help
'''


def msg_exit(code):
    def msg(m):
        print(m)
        sys.exit(code)
    return msg

error = msg_exit(1)
info  = msg_exit(0)


def io_read(source):
    return ' '.join([line for line in source])

def handle_stdio(args):
    return io_read(sys.stdin)

def handle_file(args):
    file = args[2]
    try:
        return io_read(open(file))
    except FileNotFoundError:
        error('No such file: \'%s\'' % file)

def handle_help(args):
    info(help_msg)

handles = {'': handle_stdio, 'f': handle_file, 'h': handle_help}

def parse_arg(args):
    option = ''

    if len(args) > 1:
        option = args[1].lstrip('-')

    try:
        return handles[option](args)
    except KeyError:
        error('Invalid option: \'%s\'' % option)
