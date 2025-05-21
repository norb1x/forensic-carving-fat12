# Mount the image
sudo mount -o loop,ro /home/student/Images/fat_fs.raw /mnt/analiza

# Run Foremost
foremost -i /home/student/Images/fat_fs.raw -o output_foremost

# Run Scalpel (after configuring file types in scalpel.conf)
scalpel /home/student/Images/fat_fs.raw -o output_scalpel

# Run Photorec (interactive mode)
photorec

# View hash of mounted image and original image
sha1sum /home/student/Images/fat_fs.raw
sha1sum /dev/loop21

