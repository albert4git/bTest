width = height = 1024
ip = ShortProcessor(width,height)
for y in range(height):
   IJ.showProgress(y,height-1)
   for x in range(width):
       ip.set(x, y, y)
imp = ImagePlus("Synthetic Image", ip)
imp.show()
