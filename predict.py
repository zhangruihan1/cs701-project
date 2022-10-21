import os
import numpy as np
import glob

pred = ''
for name in glob.glob('predictions/*.npy'):
	img = name.split('/')[-1].replace('.npy', '')
	pp = np.load(name)
	pred += img
	for k, p in enumerate(pp):
		if p > 0.2:
			pred += ' ' + str(k)
	pred += '\n'
print(pred)
