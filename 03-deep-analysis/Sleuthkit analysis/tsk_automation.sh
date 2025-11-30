#!/bin/bash

echo "Enter the image name (example: disk.dd): "
IMAGE="/media/sf_shared_folder/nps-2008-jean.E01"
if [ ! -f "$IMAGE" ]; then
    echo "Image not found! Please provide a correct path."
    exit 
fi
# Run mmls
mmls $IMAGE | tee mmls_output.txt

OFFSET=63
FSTYPE="ntfs"

# Run fsstat
fsstat -i ewf -o $OFFSET -f $FSTYPE $IMAGE > fsstat_output.txt

# Run fls (recursive)
fls -i ewf -o $OFFSET -f $FSTYPE -r $IMAGE > fls_output.txt

# Run ifind example
FNAME=$(fls -i ewf -o $OFFSET -f $FSTYPE -r $IMAGE | grep m57biz.xls)
INODE=$(echo "$FNAME" | grep -oE '^[^0-9]*[0-9]+' | grep -oE '[0-9]+')

echo "Detected inode: $INODE"

if [ -z "$INODE" ]; then
    echo "ERROR: Could not detect inode!"
    exit 1
fi

# Run istat (requires inode)
if [ ! -z "$INODE" ]; then
    istat -i ewf -o $OFFSET -f $FSTYPE $IMAGE $INODE > istat_output.txt
fi

if [ ! -z "$INODE" ]; then
    icat -i ewf -o $OFFSET -f $FSTYPE $IMAGE $INODE > recoverd_file.xls
fi

echo "-------------------------------------"
echo "All commands executed successfully!"
echo "Outputs saved as:"
echo "mmls_output.txt"
echo "fsstat_output.txt"
echo "fls_output.txt"
echo "ffind_output.txt (if used)"
echo "ifind_output.txt (if used)"
echo "istat_output.txt (if used)"
echo "-------------------------------------"
