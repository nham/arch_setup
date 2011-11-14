PATH=$PATH:/usr/share/clojure:home/nh/bin:/home/nh/bin/awk
export PATH

sudo mount -t ntfs /dev/sda8 /mnt/ntfs

exec startx
