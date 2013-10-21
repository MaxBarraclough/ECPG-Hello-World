ecpg helloworld.pgc   &&   cc -I/usr/include/postgresql/  ./helloworld.c -lecpg -o helloworld


# The -l flag causes linking against llibecpg.so which, in Ubuntu,
# requires that the libecpg-dev package be installed.

# The -I flag is necessary to ensure that ecpglib.h is found
# when it is referenced by the generated .c file

