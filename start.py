#!/usr/bin/env python3

import os
import sys


print("Mac Changer")

option = str(input("Do you want to change your Mac?(Y or N)"))

if option == "Y" | option == "y":
    os.sys("bash files/dependencies.sh")
    sleep(2)
    os.sys("bash files/mac.sh")

if option == "N"  | option == "n":
    sleep(2)
    sys.exit()
    