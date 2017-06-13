#!/bin/bash
  BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "
#!/bin/bash

alias reo=\"java -jar $BASEDIR/bin/reo-1.0.jar\"

export CLASSPATH=\"$CLASSPATH:.:$BASEDIR/bin/reo-runtime-java.jar:$BASEDIR/bin/reo-runtime-java-lykos.jar\"
" >> $BASEDIR/initreo.sh

echo "
===================================
=                                 =
=   README for Reo installation   =
=                                 =
===================================

=============
Linux and Mac
=============

To compile the Java code generated by Reo, it is necessary to link the runtime library. 
To configure Reo for your current shell, execute the following commands:

        >$ source $BASEDIR/initreo.sh

If you want to make Reo automatic for each Shell sessions, append the startup script ~/.bashrc with the following commands:

        >$ export CLASSPATH=\"\$CLASSPATH:.:$BASEDIR/bin/reo-runtime-java.jar:$BASEDIR/bin/reo-runtime-java-lykos.jar\"

        >$ alias reo=\"java -jar $BASEDIR/bin/reo-1.0.jar\"

For the changes to take effect, run

        >$ source ~/.bashrc

======
How to compile and run examples : 
======
Go to folder \"examples/slides/main\" and execute : 

        >$  reo FILE.treo -cp ../..

The option -cp indicate the classpath for reo dependencies.
Compile the file with : 

        >$  javac *.java 

Note that if you are using external java classes, you should first compile those classes before compiling the generated code. 
Run the application with : 

        >$  java FILE


" >> $BASEDIR/README
