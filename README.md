ECPG Hello World
================

About
-----

A simple example program using ECPG ("the PostgreSQL embedded SQL preprocessor for C programs", regarding embedded SQL in C).

It performs a simple SELECT query.
Code for a simple INSERT is also included, and can easily be enabled - it is 'commented out' by means of the C preprocessor.

It uses a hard-coded placeholder authentication configuration:
-  username: "username"
-  password: "abc123"


Dependencies
------------

On Ubuntu, the following packages are necessary:

-  postgresql
-  libecpg-dev

PostgreSQL must be running (of course), and must have a database named "TestDB", in which there must be a table named "MyFirstTable", in the "public" schema.

The proper configuration is given in dump.sql, which includes example data.


Building and Running
--------------------

Provided your system meets the requirements specified above, build.sh should work to build.
(It generates helloworld.c from helloworld.pgc, and then compiles helloworld.c to the executable helloworld.)

To compile and run, then:

        ./build.sh && ./helloworld

or discard the output on stderr:

        ./build.sh && ./helloworld 2> /dev/null

