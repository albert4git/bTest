➜ curl cheat.sh/ipython
# create a ipython profile
ipython profile create profile_name

# use specified profile
ipython --profile=${profile_name}

# list objects, functions, etc. that have been added in the current namespace,
# as well as modules that have been imported
%who

# Assign a name to a set of input commands,
# so that they can be executed all together using the assigned name
%macro

# This will open an editor (whatever the shell variable EDITOR is set to, see above, or vi/vim if no variable is set)
# containing the specified material, based on what arguments are provided,
# and will execute that code once the editor is exited
%edit

# This lists all ipython magic commands
%lsmagic

# store variables, functions, etc. that you've defined in your .ipython/ipythonrc file for use in future sessions
%store

# configure ipython to automatically open the python debugger pdb when an error occurs
%pdb

# timing functions to see how long expressions take to execute
%time
%timeit

# to log ipython input and/or output to files
%logstart
%logon
%logoff
%logstate

# (to change directories, manipulate directory stacks, and create directory "bookmarks") 
%cd
%pushd
%popd
%bookmark

# Resets the interactive environment
%reset

# Allows you to see any part of your input history
%hist 

# Search ("grep") through your history by typing
%hist -g somestring

# List objects, functions, etc. that have been added in the current
# namespace, as well as modules that have been imported
%who

# Show internal IPython aliases
%alias

# Embed ipython in python code
from IPython import embed; embed()
