#!/bin/bash
mkdir lilo_test
cd lilo_test
cp ../lilo.c .
echo "Retrieving test"
wget https://raw.githubusercontent.com/stormofice/sp-custom-tests/main/aufgabe1/test.c
gcc -std=c11 -pedantic -DXOPENSOURCE=700 -Wall -Wl,--wrap=main -o lilo_test lilo.c test.c
./lilo_test
exit="$?"
echo "Finished with exit code $(exit). This should not differ from zero."
rm lilo.c
rm test.c
rm lilo_test
cd ..
rmdir lilo_test