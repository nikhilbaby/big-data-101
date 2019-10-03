#!/usr/bin/env python
import sys
import re


def read_input(file):
    for line in file:
        yield line.split()


def main(separator='\t'):
    data = read_input(sys.stdin)
    for words in data:
        for word in words:
            if re.match(r"^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$", word):
                print('%s%s%d' % (word, separator, 1))


if __name__ == "__main__":
    main()