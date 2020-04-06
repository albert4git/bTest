"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 
curl cheat.sh/lsof  

# List all IPv4 network files
sudo lsof -i4

# List all IPv6 network files
sudo lsof -i6

# List all open sockets
lsof -i

# List all listening ports
lsof -Pnl +M -i4

# Find which program is using the port 80
lsof -i TCP:80

# List all connections to a specific host
lsof -i@192.168.1.5

# List all processes accessing a particular file/directory
lsof </path/to/file>

# List all files open for a particular user
lsof -u <username>

# List all files/network connections a command is using
lsof -c <command-name>

# List all files a process has open
lsof -p <pid>

# List all files open mounted at /mount/point.
# Particularly useful for finding which process(es) are using a
# mounted USB stick or CD/DVD.
lsof +f -- </mount/point>

# See this primer: http://www.danielmiessler.com/study/lsof/
# for a number of other useful lsof tips
"--------------------------------------------------------------------------------- 

➜ curl cheat.sh/cat
# Display the contents of a file
cat /path/to/foo

# Display contents with line numbers
cat -n /path/to/foo

# Display contents with line numbers (blank lines excluded)
cat -b /path/to/foo
"--------------------------------------------------------------------------------- 
# To create a symlink:
ln -s path/to/the/target/directory name-of-symlink

# Symlink, while overwriting existing destination files
ln -sf /some/dir/exec /usr/bin/exec
"--------------------------------------------------------------------------------- 
# 
# ls
# 
# List directory contents.
# 
# List files one per line:
  ls -1
# 
# List all files, including hidden files:
  ls -a
# 
# Long format list (permissions, ownership, size and modification date) of all files:
  ls -la
# 
# Long format list with size displayed using human readable units (KB, MB, GB):
  ls -lh
# 
# Long format list sorted by size (descending):
  ls -lS
# 
# Long format list of all files, sorted by modification date (oldest first):
  ls -ltr
# 
"--------------------------------------------------------------------------------- 

# To display a recursive directory tree
tree

# To make tree output contents from path `/foo/bar`
tree /foo/bar

# To make tree omit any empty directories from the output
tree --prune

# To list directories only (`-d`), and at a max depth of two levels (`-L`)
tree -d -L 2
"--------------------------------------------------------------------------------- 
➜ curl cheat.sh/awk    
# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# using specific character as separator to sum integers from a file or stdin
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# print a multiplication table
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# Specify output separator character
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# search for a paragraph containing string
awk -v RS='' '/42B/' file

# display only first column from multi-column text
echo "first-column  second-column  third-column" | awk '{print $1}'
"--------------------------------------------------------------------------------- 

# Python is a high-level programming language
# and python is a Python interpreter.

# Basic example of server with python
# Will start a Web Server in the current directory on port 8000
# go to http://127.0.0.1:8000
#
# Python v2.7
python -m SimpleHTTPServer
# Python 3
python -m http.server 8000

# SMTP-Server for debugging, messages will be discarded, and printed on stdout.
python -m smtpd -n -c DebuggingServer localhost:1025

# Pretty print a json
python -mjson.tool

# Zen of Python
# or just 'import this' in python
python -mthis

# See also:
#   Python language cheat sheets at /python/
#   list of pages:      /python/:list
#   learn python:       /python/:learn
#   search in pages:    /python/~keyword

"--------------------------------------------------------------------------------- 


# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# To remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# To replace newlines in multiple lines
sed ':a;N;$!ba;s/\n//g'  file.txt

# Insert a line before a matching pattern:
sed '/Once upon a time/i\Chapter 1'

# Add a line after a matching pattern:
sed '/happily ever after/a\The end.'
"--------------------------------------------------------------------------------- 
# A list of all the available dictionaries can be queried by executing
dict -I

# translate "understand" to dutch
dict -d fd-eng-nld understand

# show available dict databases
dict -D
"--------------------------------------------------------------------------------- 

# Every command shown here can be used with the `-g` switch for global scope

# Install a package in the current directory
npm install <package>

# Install a package, and save it in the `dependencies` section of `package.json`
npm install --save <package>

# Install a package, and save it in the `devDependencies` section of `package.json`
npm install --save-dev <package>

# Show outdated packages in the current directory
npm outdated

# Update outdated packages
npm update

# Update `npm` (will override the one shipped with Node.js)
npm install -g npm

# Uninstall a package
npm uninstall <package>
"--------------------------------------------------------------------------------- 

➜ curl cheat.sh/wget                    
# To download a single file
wget http://path.to.the/file

# To download a file and change its name
wget http://path.to.the/file -O newname

# To download a file into a directory
wget -P path/to/directory http://path.to.the/file

# To continue an aborted downloaded
wget -c http://path.to.the/file

# To download multiples files with multiple URLs
wget URL1 URL2

# To parse a file that contains a list of URLs to fetch each one
wget -i url_list.txt

# To mirror a whole page locally
wget -pk http://path.to.the/page.html

# To mirror a whole site locally
wget -mk http://site.tl/

# To download files according to a pattern
wget http://www.myserver.com/files-{1..15}.tar.bz2

# To download all the files in a directory with a specific extension if directory indexing is enabled
wget -r -l1 -A.extension http://myserver.com/directory

# Allows you to download just the headers of responses (-S --spider) and display them on Stdout (-O -).
wget -S --spider -O - http://google.com

# Change the User-Agent to 'User-Agent: toto'
wget -U 'toto' http://google.com
"--------------------------------------------------------------------------------- 

# To copy files from remote to local, maintaining file properties and sym-links (-a), zipping for faster transfer (-z), verbose (-v).  
rsync -avz host:file1 :file1 /dest/
rsync -avz /source host:/dest

# Copy files using checksum (-c) rather than time to detect if the file has changed. (Useful for validating backups). 
rsync -avc /source/ /dest/

# Copy contents of /src/foo to destination:

# This command will create /dest/foo if it does not already exist
rsync -auv /src/foo /dest

# Explicitly copy /src/foo to /dest/foo
rsync -auv /src/foo/ /dest/foo

# Copy file from local to remote over ssh with non standard port 1234 to destination folder in remoteuser's home directory
rsync -avz -e "ssh -p1234" /source/file1 remoteuser@X.X.X.X:~/destination/
"--------------------------------------------------------------------------------- 

# Move a file from one place to another
mv ~/Desktop/foo.txt ~/Documents/foo.txt

# Move a file from one place to another and automatically overwrite if the destination file exists
# (This will override any previous -i or -n args)
mv -f ~/Desktop/foo.txt ~/Documents/foo.txt

# Move a file from one place to another but ask before overwriting an existing file
# (This will override any previous -f or -n args)
mv -i ~/Desktop/foo.txt ~/Documents/foo.txt

# Move a file from one place to another but never overwrite anything
# (This will override any previous -f or -i args)
mv -n ~/Desktop/foo.txt ~/Documents/foo.txt

# Move listed files to a directory
mv -t ~/Desktop/ file1 file2 file3
"--------------------------------------------------------------------------------- 

# Printout disk free space in a human readable format
df -h

# Disk free space for ext2 file systems
df -t ext2

# Disk free space for file systems except ext2
df -x ext2

# Show inode usage
df -i

# Show information about a distinct file system /path
df /path
"--------------------------------------------------------------------------------- 

# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# using specific character as separator to sum integers from a file or stdin
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# print a multiplication table
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# Specify output separator character
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# search for a paragraph containing string
awk -v RS='' '/42B/' file

# display only first column from multi-column text
echo "first-column  second-column  third-column" | awk '{print $1}'
"--------------------------------------------------------------------------------- 
# 
# exa
# 
# A modern replacement for ls (List directory contents).
# 
# List files one per line:
  exa --oneline
# 
# List all files, including hidden files:
  exa --all
# 
# Long format list (permissions, ownership, size and modification date) of all files:
  exa --long --all
# 
# List files with the largest at the top:
  exa --reverse --sort=size
# 
# Display a tree of files, three levels deep:
  exa --long --tree --level=3
# 
# List files sorted by modification date (oldest first):
  exa --long --sort=modified
# 
# 
# e also: ls
# 
# 
"--------------------------------------------------------------------------------- 

# Search a file for a pattern
grep pattern file

# Case insensitive search (with line numbers)
grep -in pattern file

# Recursively grep for string <pattern> in folder:
grep -R pattern folder

# Read search patterns from a file (one per line)
grep -f pattern_file file

# Find lines NOT containing pattern
grep -v pattern file

# You can grep with regular expressions
grep "^00" file  #Match lines starting with 00
grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" file  #Find IP add

# Find all files which match {pattern} in {directory}
# This will show: "file:line my research"
grep -rnw 'directory' -e "pattern"

# Exclude grep from your grepped output of ps.
# Add [] to the first letter. Ex: sshd -> [s]shd
ps aux | grep '[h]ttpd'

# Colour in red {bash} and keep all other lines
ps aux | grep -E --color 'bash|$'
"--------------------------------------------------------------------------------- 

# To find files by case-insensitive extension (ex: .jpg, .JPG, .jpG):
find . -iname "*.jpg"

# To find directories:
find . -type d

# To find files:
find . -type f

# To find files by octal permission:
find . -type f -perm 777

# To find files with setuid bit set:
find . -xdev \( -perm -4000 \) -type f -print0 | xargs -0 ls -l

# To find files with extension '.txt' and remove them:
find ./path/ -name '*.txt' -exec rm '{}' \;

# To find files with extension '.txt' and look for a string into them:
find ./path/ -name '*.txt' | xargs grep 'string'

# To find files with size bigger than 5 Mb and sort them by size:
find . -size +5M -type f -print0 | xargs -0 ls -Ssh | sort -z

# To find files bigger thank 2 MB and list them:
find . -type f -size +20000k -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'

# To find files modified more than 7 days ago and list file information
find . -type f -mtime +7d -ls

# To find symlinks owned by a user and list file information
find . -type l --user=username -ls

# To search for and delete empty directories
find . -type d -empty -exec rmdir {} \;

# To search for directories named build at a max depth of 2 directories
find . -maxdepth 2 -name build -type d

# To search all files who are not in .git directory
find . ! -iwholename '*.git*' -type f

# To find all files that have the same node (hard link) as MY_FILE_HERE
find . -type f -samefile MY_FILE_HERE 2>/dev/null

# To find all files in the current directory and modify their permissions
find . -type f -exec chmod 644 {} \;

# To find files with extension '.txt.' and edit all of them with vim
# vim is started only once for all files
find . -iname '*.txt' -exec vim {} \+
"--------------------------------------------------------------------------------- 

➜ curl cheat.sh/apt    
# To search a package:
apt search package

# To show package informations:
apt show package

# To fetch package list:
apt update

# To download and install updates without installing new package:
apt upgrade

# To download and install the updates AND install new necessary packages:
apt dist-upgrade

# Full command:
apt update && apt dist-upgrade

# To install a new package(s):
apt install package(s)

# To uninstall package(s)
apt remove package(s)
"--------------------------------------------------------------------------------- 

# To search for apt packages:
apt-cache search "whatever"

# To display package records for the named package(s):
apt-cache show pkg(s)

# To display reverse dependencies of a package
apt-cache rdepends package_name

# To display package versions, reverse dependencies and forward dependencies 
# of a package
apt-cache showpkg package_name
"--------------------------------------------------------------------------------- 


# Desc: Allows to update the operating system

# To fetch package list
apt-get update

# To download and install updates without installing new package.
apt-get upgrade

# To download and install the updates AND install new necessary packages
apt-get dist-upgrade

# Full command:
apt-get update && apt-get dist-upgrade

# To install a new package(s)
apt-get install package(s)

# Download a package without installing it. (The package will be downloaded in your current working dir)
apt-get download modsecurity-crs

# Change Cache dir and archive dir (where .deb are stored).
apt-get -o Dir::Cache="/path/to/destination/dir/" -o Dir::Cache::archives="./" install ...

# Show apt-get installed packages.
grep 'install ' /var/log/dpkg.log

# Silently keep old configuration during batch updates
apt-get update -o DPkg::Options::='--force-confold' ...
"--------------------------------------------------------------------------------- 

"--------------------------------------------------------------------------------- 
# Display all interfaces with addresses
ip addr

# Take down / up the wireless adapter
ip link set dev wlan0 {up|down}

# Set a static IP and netmask
ip addr add 192.168.1.100/32 dev eth0

# Remove a IP from an interface
ip addr del 192.168.1.100/32 dev eth0

# Remove all IPs from an interface
ip address flush dev eth0

# Display all routes
ip route

# Display all routes for IPv6
ip -6 route

# Add default route via gateway IP
ip route add default via 192.168.1.1

# Add route via interface
ip route add 192.168.0.0/24 dev eth0

# Change your mac address 
ip link set dev eth0 address aa:bb:cc:dd:ee:ff

# View neighbors (using ARP and NDP) 
ip neighbor show
