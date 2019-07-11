start = System.currentTimeMillis()
imp = IJ.getImage()
stats = imp.getStatistics()
ip = imp.getProcessor()
n = ip.getPixelCount()
for i in range(n):
   v1 = ip.getf(i)
   v2 = Math.pow(10, v1/stats.max)
   ip.setf(i, v2)
ip.setMinAndMax(0, 10)
imp.updateAndDraw()
time = (System.currentTimeMillis()-start)/1000.0
print time, "seconds,", Math.round(n/time), "pixels/second"

