#!/usr/bin/env python3

"""
Small utility to toggle through a set of retina display modes.
Depends on displayplacer: https://github.com/jakehilborn/displayplacer
"""

import subprocess
import re

CURRENT_MODE_RE = re.compile(r'^\s*mode (\d+):')
MODES = [5, 7]
DISPLAY_ID = "1FF8F5E7-4684-FAAF-396B-715F8AE0AA7F"

def get_current_mode():
    result = subprocess.run(args=['displayplacer', 'list'], check=True, capture_output=True)
    stdout = result.stdout.decode('utf-8').split('\n')
    current_mode_line = next(line for line in stdout if '<-- current mode' in line)
    matches = CURRENT_MODE_RE.match(current_mode_line)

    if matches is None:
        raise AssertionError("expected matches")
    return int(matches.group(1))


def get_next_mode(current_mode):
    if current_mode not in MODES:
        return MODES[0]
    else:
        next_idx = (MODES.index(current_mode) + 1) % len(MODES)
        return MODES[next_idx]


def set_mode(mode):
    cmd = f'id:{DISPLAY_ID} mode:{mode}'
    result = subprocess.run(args=['displayplacer', cmd], check=True)


def main():
    current_mode = get_current_mode()
    next_mode = get_next_mode(current_mode)
    set_mode(next_mode)

if __name__ == '__main__':
    main()
