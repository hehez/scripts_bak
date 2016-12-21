#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 10/23/16
# @Author  : hehez
# @Site    : 
# @File    : main.py
# @Software: PyCharm Edu


"""
A simple script to generate python file with header comment
"""

import os

from time import strftime

time = strftime('%D %-I:%-M%p')
auther = 'hehez'
init_version = '0.1.0'

title = raw_input("Enter a file name for your script: ")

# Add .py to the end of the script.
if not title.endswith('.py'):
    title = title + '.py'

# Convert all letters to lower case.
title = title.lower()

# Remove spaces from the title.
title = title.replace(' ', '_')

header = """#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : %s
# @Author  : %s
# @File    : %s
# @Version : %s

\"\"\"Here's your Module Docstring!

Start More specific detail Docstring here!
\"\"\"


# Import the modules needed to run the script.


def main():
    pass

if __name__ == '__main__':
    main()
""" % (time, auther, title, init_version)

filename = open(title, 'w')
filename.write(header)
filename.close()