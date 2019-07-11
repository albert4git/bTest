# This script demonstrates how to median filter 
# an image using ImageJ's RankFilters class.

imp = IJ.getImage();
ip = imp.getProcessor();
filter = RankFilters();
radius = 5;
filter.rank(ip, radius, RankFilters.MEDIAN);
imp.updateAndDraw();
 
