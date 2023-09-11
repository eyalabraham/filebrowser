#!/bin/bash 
# Create three 1MB files with random data in the 'filebrowser' application.
# Run inside the 'filebrowser' pod.

FILES="/files"

dd if=/dev/urandom of=$FILES/file1 bs=1M count=10
md5sum $FILES/file1 > $FILES/checksum

dd if=/dev/urandom of=$FILES/file2 bs=1M count=10
md5sum $FILES/file2 >> $FILES/checksum

dd if=/dev/urandom of=$FILES/file3 bs=1M count=10
md5sum $FILES/file2 >> $FILES/checksum