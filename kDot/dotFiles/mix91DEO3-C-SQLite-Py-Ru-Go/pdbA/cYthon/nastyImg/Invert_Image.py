imp = IJ.getImage()
ip = imp.getProcessor()
width = ip.getWidth()
height = ip.getHeight()
stats = ip.getStatistics()
for y in range(height):
   IJ.showProgress(y,height-1)
   for x in range(width):
       v = ip.getf(x,y)
       ip.setf(x, y, stats.max-(v-stats.min))
imp.updateAndDraw()
