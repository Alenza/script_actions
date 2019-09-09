find -type f \( -name "*zip" -o -name "*tar" -o -name "*gz" \) -size +1M -delete

USER=$1
PASS=$2
usermod --password $(echo $PASS | openssl passwd -1 -stdin) $USER
