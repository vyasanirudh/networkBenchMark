#!/usr/bin/python

import fileinput
import json
import sys

for line in fileinput.input():
    obj = json.loads(line)

    if obj['event'] == 'end-test':
        if obj['succeeded']:
            sys.stdout.write('.')
        else:
            sys.stdout.write('!')

sys.stdout.write('\n')