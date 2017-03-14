#!/usr/bin/env python

from __future__ import print_function

import os
from astropy.io import ascii

if __name__ == '__main__':

    syseng_throughputs_path = "../syseng_throughputs/"
    f = ascii.read(os.path.join(syseng_throughputs_path,
                                "components/camera/filters",
                                "g_band_Response.dat"))
    f['col1'] *= 1.010
    f.write("shifted_filters/g_band_Response.dat", format="ascii.fast_no_header", delimiter=" ")


