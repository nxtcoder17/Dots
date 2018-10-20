
#! /bin/bash

cat << EOF
                    ==============[ Programming Languages ]============
                        [ Python3 ]                         : python, python-pip
                        [ tk ]                              : tk
                        [ Ruby ]                            : ruby
                        [ Java ]                            : jdk9-openjdk
                        [ Kotlin ]                          : kotlin
EOF

pacman -S python python-pip\
    tk\
    ruby\
    jdk9-openjdk\
    kotlin
