module nova.elp.elp20;

import nova.lunar_priv;

const planet_pert[]  elp20 = [
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000], 0.000000, 0.000070, 0.075000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000], 0.000000, 0.000080, 5.997000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000], 0.000000, 0.000080, 0.037000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000], 0.000000, 0.000050, 0.076000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000], 0.000000, 0.000030, 0.025000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -4.000000, -1.000000], 0.000000, 0.000020, 0.015000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -3.000000, -1.000000], 0.000000, 0.000190, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -3.000000, 1.000000], 0.000000, 0.000060, 0.039000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -2.000000, -1.000000], 0.000000, 0.002000, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -2.000000, 1.000000], 0.000000, 0.000760, 0.083000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, -3.000000], 180.000000, 0.000020, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, -1.000000], 0.000000, 0.016960, 0.039000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 1.000000], 0.000000, 0.014190, 0.857000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 3.000000], 0.000000, 0.000020, 0.036000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, -1.000000], 0.000000, 0.012150, 0.081000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 1.000000], 0.000000, 0.016230, 0.069000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 3.000000], 180.000000, 0.000030, 0.024000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -3.000000], 0.000000, 0.000020, 0.038000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -1.000000], 0.000000, 0.012790, 1.200000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000], 0.000000, 0.013380, 0.036000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 3.000000], 180.000000, 0.000020, 0.018000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 2.000000, -1.000000], 0.000000, 0.000790, 0.071000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 2.000000, 1.000000], 0.000000, 0.001610, 0.024000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 3.000000, -1.000000], 0.000000, 0.000060, 0.037000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 3.000000, 1.000000], 0.000000, 0.000160, 0.018000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 4.000000, 1.000000], 0.000000, 0.000010, 0.015000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, -1.000000], 0.000000, 0.000080, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 1.000000], 0.000000, 0.000030, 0.090000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -1.000000], 0.000000, 0.000570, 0.041000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 1.000000], 0.000000, 0.000480, 0.462000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, -1.000000], 0.000000, 0.000090, 0.088000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 1.000000], 0.000000, 0.000290, 0.065000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -1.000000], 0.000000, 0.000310, 0.545000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 1.000000], 0.000000, 0.000280, 0.035000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, -1.000000], 0.000000, 0.000010, 0.066000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, 1.000000], 0.000000, 0.000030, 0.024000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, -1.000000, -1.000000], 0.000000, 0.000020, 0.042000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, -1.000000, 1.000000], 0.000000, 0.000010, 0.316000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -2.000000, 0.000000, -1.000000], 180.000000, 0.000010, 0.327000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -2.000000, 0.000000, 1.000000], 180.000000, 0.000010, 0.042000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, -1.000000, -1.000000], 180.000000, 0.000030, 0.065000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 0.000000, -1.000000], 0.000000, 0.000030, 0.487000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 0.000000, 1.000000], 0.000000, 0.000050, 0.040000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 1.000000, -1.000000], 0.000000, 0.000050, 0.089000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, -1.000000, 1.000000, 1.000000], 0.000000, 0.000020, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -2.000000, -1.000000], 180.000000, 0.000040, 0.038000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -2.000000, 1.000000], 180.000000, 0.000040, 3.575000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -1.000000, -1.000000], 180.000000, 0.000020, 0.075000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, -1.000000, 1.000000], 0.000000, 0.000140, 0.074000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 0.000000, -1.000000], 180.000000, 0.002020, 18.600000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 0.000000, 1.000000], 180.000000, 0.002020, 0.037000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, -1.000000], 180.000000, 0.000090, 0.076000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000, 1.000000], 180.000000, 0.000260, 0.025000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 2.000000, 1.000000], 180.000000, 0.000030, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 2.000000, 0.000000, 1.000000], 0.000000, 0.000010, 0.036000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -4.000000, 0.000000, -1.000000], 180.000000, 0.000010, 0.137000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, -1.000000, -1.000000], 180.000000, 0.000070, 0.202000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, -1.000000, 1.000000], 180.000000, 0.000080, 0.046000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, 0.000000, -1.000000], 180.000000, 0.000280, 0.120000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, 0.000000, 1.000000], 180.000000, 0.000120, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, 1.000000, -1.000000], 180.000000, 0.000020, 0.046000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -3.000000, 1.000000, 1.000000], 180.000000, 0.000020, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, -2.000000, -1.000000], 180.000000, 0.000110, 0.058000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, -1.000000, -1.000000], 180.000000, 0.001350, 0.254000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, -1.000000, 1.000000], 180.000000, 0.001580, 0.044000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 0.000000, -3.000000], 180.000000, 0.000010, 0.057000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 0.000000, -1.000000], 180.000000, 0.005460, 0.107000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 0.000000, 1.000000], 180.000000, 0.001930, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 1.000000, -1.000000], 180.000000, 0.000350, 0.044000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 1.000000, 1.000000], 180.000000, 0.000290, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 2.000000, -1.000000], 180.000000, 0.000030, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -2.000000, 2.000000, 1.000000], 180.000000, 0.000030, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -4.000000, -1.000000], 180.000000, 0.000010, 0.023000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -3.000000, -1.000000], 180.000000, 0.000140, 0.034000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -3.000000, 1.000000], 180.000000, 0.000020, 0.384000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -2.000000, -1.000000], 180.000000, 0.001640, 0.062000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -2.000000, 1.000000], 0.000000, 0.000160, 0.094000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -1.000000, -3.000000], 180.000000, 0.000030, 0.034000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -1.000000, -1.000000], 180.000000, 0.018690, 0.340000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -1.000000, 1.000000], 180.000000, 0.022290, 0.042000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, -1.000000, 3.000000], 0.000000, 0.000030, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 0.000000, -3.000000], 180.000000, 0.000220, 0.060000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 0.000000, -1.000000], 180.000000, 0.074300, 0.097000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 0.000000, 1.000000], 180.000000, 0.019990, 0.027000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 0.000000, 3.000000], 0.000000, 0.000020, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 1.000000, -3.000000], 0.000000, 0.000040, 0.305000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 1.000000, -1.000000], 180.000000, 0.004430, 0.042000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 1.000000, 1.000000], 180.000000, 0.002850, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 2.000000, -1.000000], 180.000000, 0.000320, 0.027000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 2.000000, 1.000000], 180.000000, 0.000310, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 3.000000, -1.000000], 180.000000, 0.000020, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, -1.000000, 3.000000, 1.000000], 180.000000, 0.000030, 0.013000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, -1.000000, -1.000000], 0.000000, 0.000260, 0.515000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, -1.000000, 1.000000], 0.000000, 0.000370, 0.040000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 0.000000, -3.000000], 0.000000, 0.000010, 0.064000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 0.000000, -1.000000], 0.000000, 0.002950, 0.088000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 0.000000, 1.000000], 0.000000, 0.000530, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 1.000000, -1.000000], 0.000000, 0.000220, 0.041000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 1.000000, 1.000000], 0.000000, 0.000100, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 2.000000, -1.000000], 0.000000, 0.000020, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, 2.000000, 1.000000], 0.000000, 0.000010, 0.015000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -3.000000, -1.000000], 180.000000, 0.000050, 0.036000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -2.000000, -1.000000], 180.000000, 0.000200, 0.070000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -2.000000, 1.000000], 180.000000, 0.000140, 0.079000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -1.000000, -1.000000], 0.000000, 0.001980, 1.063000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, -1.000000, 1.000000], 0.000000, 0.003300, 0.039000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 0.000000, -3.000000], 0.000000, 0.000140, 0.069000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 0.000000, -1.000000], 0.000000, 0.030430, 0.081000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 0.000000, 1.000000], 0.000000, 0.003180, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 1.000000, -3.000000], 180.000000, 0.000010, 0.785000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 1.000000, -1.000000], 0.000000, 0.002070, 0.039000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 1.000000, 1.000000], 0.000000, 0.000600, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 2.000000, -1.000000], 0.000000, 0.000160, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 2.000000, 1.000000], 0.000000, 0.000080, 0.015000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 1.000000, 3.000000, -1.000000], 0.000000, 0.000010, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, -2.000000, -1.000000], 0.000000, 0.000060, 0.076000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, -2.000000, 1.000000], 0.000000, 0.000030, 0.073000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, -1.000000, -1.000000], 0.000000, 0.000530, 16.885000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, -1.000000, 1.000000], 0.000000, 0.000570, 0.037000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, 0.000000, -1.000000], 0.000000, 0.000680, 0.075000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, 0.000000, 1.000000], 0.000000, 0.000070, 0.025000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 2.000000, 1.000000, -1.000000], 0.000000, 0.000030, 0.038000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, -1.000000, -1.000000, -1.000000], 0.000000, 0.000050, 0.106000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, -1.000000, -1.000000, 1.000000], 0.000000, 0.000030, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, -1.000000, 0.000000, -1.000000], 0.000000, 0.000060, 0.044000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 1.000000, -1.000000, -1.000000], 180.000000, 0.000030, 0.088000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 1.000000, -1.000000, 1.000000], 180.000000, 0.000050, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 1.000000, 0.000000, -1.000000], 180.000000, 0.000090, 0.041000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 1.000000, 0.000000, 1.000000], 180.000000, 0.000030, 0.019000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 1.000000, 1.000000, -1.000000], 180.000000, 0.000010, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -3.000000, -1.000000, -1.000000], 180.000000, 0.000010, 0.051000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -3.000000, -1.000000, 1.000000], 180.000000, 0.000010, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -3.000000, 0.000000, -1.000000], 180.000000, 0.000010, 0.030000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, -2.000000, -1.000000], 180.000000, 0.000010, 0.133000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, -2.000000, 1.000000], 180.000000, 0.000060, 0.029000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, -1.000000, -1.000000], 180.000000, 0.000170, 0.048000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, -1.000000, 1.000000], 180.000000, 0.000120, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, 0.000000, -1.000000], 180.000000, 0.000150, 0.029000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, 0.000000, 1.000000], 180.000000, 0.000060, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, 1.000000, -1.000000], 180.000000, 0.000020, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -2.000000, 1.000000, 1.000000], 180.000000, 0.000010, 0.013000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, -2.000000, -1.000000], 180.000000, 0.000130, 0.117000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, -2.000000, 1.000000], 180.000000, 0.000540, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, -1.000000, -1.000000], 180.000000, 0.001490, 0.046000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, -1.000000, 1.000000], 180.000000, 0.000850, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 0.000000, -3.000000], 180.000000, 0.000010, 0.122000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 0.000000, -1.000000], 180.000000, 0.001040, 0.029000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 0.000000, 1.000000], 180.000000, 0.000400, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 1.000000, -1.000000], 180.000000, 0.000140, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 1.000000, 1.000000], 180.000000, 0.000080, 0.013000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 2.000000, -1.000000], 180.000000, 0.000020, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, -1.000000, 2.000000, 1.000000], 180.000000, 0.000010, 0.011000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, -2.000000, 1.000000], 0.000000, 0.000010, 0.027000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, -1.000000, -1.000000], 0.000000, 0.000080, 0.044000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, -1.000000, 1.000000], 0.000000, 0.000030, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, 0.000000, -1.000000], 0.000000, 0.000070, 0.028000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, 0.000000, 1.000000], 0.000000, 0.000020, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 0.000000, 1.000000, -1.000000], 0.000000, 0.000010, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, -2.000000, 1.000000], 0.000000, 0.000070, 0.027000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, -1.000000, -1.000000], 0.000000, 0.000430, 0.042000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, -1.000000, 1.000000], 0.000000, 0.000130, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, 0.000000, -1.000000], 0.000000, 0.000280, 0.027000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, 0.000000, 1.000000], 0.000000, 0.000060, 0.016000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, 1.000000, -1.000000], 0.000000, 0.000040, 0.020000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 1.000000, 1.000000, 1.000000], 0.000000, 0.000010, 0.013000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 2.000000, -2.000000, 1.000000], 0.000000, 0.000010, 0.026000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 4.000000, 2.000000, -1.000000, -1.000000], 0.000000, 0.000020, 0.040000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, -3.000000, 1.000000], 180.000000, 0.000010, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, -2.000000, -1.000000], 180.000000, 0.000030, 0.030000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, -2.000000, 1.000000], 180.000000, 0.000020, 0.017000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, -1.000000, -1.000000], 180.000000, 0.000040, 0.021000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, -1.000000, 1.000000], 180.000000, 0.000020, 0.014000},
{[0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 6.000000, -1.000000, 0.000000, -1.000000], 180.000000, 0.000020, 0.017000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, -1.000000, 0.000000, -1.000000, 0.000000], 194.813110, 0.000020, 0.041000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, -1.000000, 0.000000, 0.000000, 0.000000], 194.813110, 0.000410, 0.088000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, -1.000000, 0.000000, 1.000000, 0.000000], 194.813110, 0.000100, 0.530000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, -1.000000, 1.000000, 0.000000, 0.000000], 194.813110, 0.000020, 0.096000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, -2.000000, 0.000000], 194.813110, 0.000020, 0.076000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, -1.000000, -2.000000], 194.813110, 0.000030, 0.037000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, -1.000000, 0.000000], 194.813110, 0.000660, 8.850000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, -2.000000], 194.813110, 0.000080, 0.074000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000], 14.813110, 0.011720, 0.075000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 2.000000], 194.813110, 0.000010, 0.025000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 1.000000, -2.000000], 194.813110, 0.000020, 4.535000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 1.000000, 0.000000], 14.813110, 0.000620, 0.038000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 2.000000, 0.000000], 14.813110, 0.000040, 0.025000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 0.000000, -1.000000, 0.000000], 14.813110, 0.000130, 0.040000},
{[0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 0.000000, 3.000000, 0.000000, 0.000000, 0.000000], 14.813110, 0.000070, 0.026000},
];
