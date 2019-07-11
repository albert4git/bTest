Note that with these checks turned off you can get segmentation faults rather than nice error messages, so its best to debug your code before putting this line in.

Next we can consider playing with compiler flags (these are C tricks rather than Cython tricks as such). When using gcc the most important option seems to be -ffast-math. From my limited experience, this can improve speeds a lot, with no noticeable loss of reliability. To implement these changes we need to modify our setup.py file

from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

ext_modules=[ Extension("fastloop",
              ["fastloop.pyx"],
              libraries=["m"],
              extra_compile_args = ["-ffast-math"])]

setup(
  name = "fastloop",
  cmdclass = {"build_ext": build_ext},
  ext_modules = ext_modules)

Now if we run cython fastloop.pyx -a again we will see the loops are now free of Python
