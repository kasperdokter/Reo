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
" >> $BASEDIR/README

