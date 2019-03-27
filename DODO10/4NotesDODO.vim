sqlitejdbc code can be downloaded using git from
https://github.com/crawshaw/sqlitejdbc. 


javac HelloWorld.java
This basic usage compiles the program to produce Hello‐
World.class.
javac –cp /dir/Classes/ HelloWorld.java
The –cp and –classpath options are equivalent and identify
classpath directories to utilize at compile time.
javac –d /opt/hwapp/classes HelloWorld.java
The –d option places generated class files into a preexisting
specified directory. If there is a package definition, the path
will be included (i.e., /opt/hwapp/src/com/oreilly/tutorial/).
javac –s /opt/hwapp/src HelloWorld.java
The –s option places generated source files into a preexisting
specified directory. If there is a package definition, the path
will be further expanded (i.e., /opt/hwapp/src/com/oreilly/
tutorial/

java -cp /tmp/Classes HelloWorld
The –cp and –classpath options identify classpath directo‐
ries to utilize at runtime.
java –Dsun.java2d.ddscale=true HelloWorld
The –D option sets a system property value. Here, hardware
accelerator scaling is turned on.
java –ea HelloWorld
The –ea and –enableassertions options enable Java asser‐
tions. Assertions are diagnostic code that you insert in your
application. For more information on assertions, see 
Assert Statement on page 62 in Chapter 6.

java -da HelloWorld
The –da and –disableassertions options disable Java
assertions.
java –client HelloWorld
The –client option selects the client virtual machine (versus
the server virtual machine) to enhance interactive applica‐
tions such as GUIs.
java –server HelloWorld
The –server option selects the server virtual machine (ver‐
sus the client virtual machine) to enhance overall system
performance.

javadoc HelloWorld.java
The javadoc command generates HTML documentation
files: HelloWorld.html, index.html, allclaases-frame.html,
constant-values.html, deprecated-list.html, overview-tree.
html, package-summary.html, etc.
javadoc –verbose HelloWorld.java
The –verbose option provides more details while Javadoc is
running.
javadoc –d /tmp/ HelloWorld.java
This –d option specifies the directory where the generated
HTML files will be extracted to. Without this option, the
files will be placed in the current working directory.
javadoc –sourcespath /Classes/ Test.java
The –sourcepath option specifies where to find user .java
source files.
javadoc –exclude <pkglist> Test.java
The –exclude option specifies which packages not to gen‐
erate HTML documentation files for.
javadoc –public Test.java
The –public option produces documentation for public
classes and members.
javadoc –protected Test.java
The –protected option produces documentation for pro‐
tected and public classes and members. This is the default
setting.

