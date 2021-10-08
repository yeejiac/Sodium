import os
import sys
parent_dir = os.path.dirname(sys.path[0])
sys.path.insert(0, parent_dir)

from lib.sodium import *

time = TimeCounter()
time.timeStart()

log = Logwriter("FD", "./")
log.write(DEBUG, "test")

time.zawarudo()