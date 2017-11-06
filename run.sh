#!/bin/sh
echo "Hello world"
cc -Wall -c ctest1.c ctest2.c
ar -cvq libctest.a ctest1.o ctest2.o
ar -t libctest.a
cc -o prog prog.c libctest.a
cc -o prog prog.c -L./ -lctest


gcc -Wall -fPIC -c ctest1.c ctest2.c
gcc -shared -Wl,-soname,libctest.so.1 -o libctest.so.1.0   *.o

ln -sf ./libctest.so.1.0 ./libctest.so.1
ln -sf ./libctest.so.1   ./libctest.so


#gcc -Wall -L./ prog.c -lctest -o prog
gcc -Wall -Wl,-rpath=./ -L./ prog.c -lctest -o prog
ldd prog






