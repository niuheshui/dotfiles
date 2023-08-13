#!/usr/bin/env python3

def get(i):
	s = '\033[48;5;%dm      \033[0m %3d' % (i, i)	
	return s	

for i in range(64):
	print(get(i), get(64 + i), get(128 + i), get(192 + i))
