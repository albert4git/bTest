imp = IJ.getImage()
width = imp.getWidth()
height = imp.getHeight()
print ""
print "title:", imp.getTitle()
print "width:", width
print "height:", height
print "stack size:", imp.getStackSize()

bitDepth = imp.getBitDepth()
type = "RGB"
if bitDepth!=24:
   type = str(bitDepth)+"-bit"
print "type:", type

composite = imp.isComposite()
hyperstack = imp.isHyperStack()
print "composite:", composite
print "hyperstack:", hyperstack
if composite or hyperstack:
   print "channels:", imp.getNChannels()
   print "slices:", imp.getNSlices()
   print "frames:", imp.getNFrames()

cal = imp.getCalibration()
scaled = cal.scaled();
print "scaled:", scaled
if scaled:
   units = cal.units
   print "pixel width:", cal.pixelWidth
   print "pixel height:", cal.pixelHeight
   print "pixel depth:", cal.pixelDepth



