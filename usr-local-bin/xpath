#!/usr/bin/env python3
import argparse
import requests
import sys
from lxml import html

parser      = argparse.ArgumentParser(description='get text of xpath element in html document')
group       = parser.add_mutually_exclusive_group(required=True)
group.add_argument('-u', metavar='url', help='parse url')
group.add_argument('-f', metavar='input-file', help='parse file')
group.add_argument('-i', action='store_true', default=not any([w in sys.argv for w in ['-u', '-f']]), help='parse stdin (default)')
parser.add_argument('-x', metavar='xpath', required=True, help='the xpath to extract')
parser.add_argument('-j', action='store_true', help='javascript context')
parsed = parser.parse_args()

if parsed.u: content = requests.get(parsed.u).text
elif parsed.f: content = ''.join(open(parsed.f).readlines())
elif parsed.i: content = ''.join(sys.stdin)
tree = html.fromstring(content)
smth = tree.xpath(parsed.x + '/text()')
print(smth)
