ubuntu@ip-172-31-8-142:~$ mkdir my-c-proj
ubuntu@ip-172-31-8-142:~$ mkdir my-c-proj/src
ubuntu@ip-172-31-8-142:~$ mkdir my-c-proj/include
ubuntu@ip-172-31-8-142:~$ mkdir my-c-proj/lib

ubuntu@ip-172-31-8-142:~$ cd my-c-proj/

ubuntu@ip-172-31-8-142:~/my-c-proj$ vi src/main.c
ubuntu@ip-172-31-8-142:~/my-c-proj$ 
ubuntu@ip-172-31-8-142:~/my-c-proj$ vi include/mylibrary.h
ubuntu@ip-172-31-8-142:~/my-c-proj$ 
ubuntu@ip-172-31-8-142:~/my-c-proj$ vi lib/mylibrary.c
ubuntu@ip-172-31-8-142:~/my-c-proj$ 
ubuntu@ip-172-31-8-142:~/my-c-proj$ vi Makefile


ubuntu@ip-172-31-8-142:~/my-c-proj$ make
gcc -Wall -Iinclude src/main.c lib/mylibrary.c include/mylibrary.h -o my-c-project
src/main.c:4:6: warning: return type of ‘main’ is not ‘int’ [-Wmain]
    4 | void main() {
      |      ^~~~

ubuntu@ip-172-31-8-142:~/my-c-proj$ ls
Makefile  include  lib  my-c-project  src

ubuntu@ip-172-31-8-142:~/my-c-proj$ ./my-c-project 
Hello, Jenkins Pipeline!
Library function called!

-----------------------------
ubuntu@ip-172-31-8-142:~/my-c-proj$ vi CMakeLists.txt

ubuntu@ip-172-31-8-142:~/my-c-proj$ cmake .
-- The C compiler identification is GNU 11.4.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/ubuntu/my-c-proj


ubuntu@ip-172-31-8-142:~/my-c-proj$ ls
CMakeCache.txt  CMakeFiles  CMakeLists.txt  Makefile  bin  cmake_install.cmake  include  lib  my-c-project  src


ubuntu@ip-172-31-8-142:~/my-c-proj$ vi Makefile 
ubuntu@ip-172-31-8-142:~/my-c-proj$ 

ubuntu@ip-172-31-8-142:~/my-c-proj$ make
[ 33%] Building C object CMakeFiles/my-c-project.dir/src/main.c.o
[ 66%] Building C object CMakeFiles/my-c-project.dir/lib/mylibrary.c.o
[100%] Linking C executable bin/my-c-project
[100%] Built target my-c-project

ubuntu@ip-172-31-8-142:~/my-c-proj$ 
----------------------------------


ubuntu@ip-172-31-8-142:~/my-c-proj$ vi Makefile 
ubuntu@ip-172-31-8-142:~/my-c-proj$ 


ubuntu@ip-172-31-8-142:~/my-c-proj$ make
[ 33%] Building C object CMakeFiles/my-c-project-1.dir/src/main.c.o
[ 66%] Building C object CMakeFiles/my-c-project-1.dir/lib/mylibrary.c.o
[100%] Linking C executable bin/my-c-project-1
[100%] Built target my-c-project-1

ubuntu@ip-172-31-8-142:~/my-c-proj$ ls
CMakeCache.txt  CMakeFiles  CMakeLists.txt  Makefile  bin  cmake_install.cmake  include  lib  src

ubuntu@ip-172-31-8-142:~/my-c-proj$ ls -al ./bin/
total 24
drwxrwxr-x 2 ubuntu ubuntu  4096 Jan 22 17:22 .
drwxrwxr-x 7 ubuntu ubuntu  4096 Jan 22 17:22 ..
-rwxrwxr-x 1 ubuntu ubuntu 16032 Jan 22 17:22 my-c-project-1
