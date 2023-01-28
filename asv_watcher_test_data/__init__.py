import os
import random
import time

path = os.path.dirname(os.path.realpath(__file__))
stage = int(open(os.path.join(path, "STAGE")).read())
assert 0 <= stage < 40
if stage < 20:
    time_min, time_max = 0.001, 0.002
else:
    time_min, time_max = 0.003, 0.004
sleep_time = random.uniform(time_min, time_max)


def a():
    time.sleep(sleep_time)
    return 0
