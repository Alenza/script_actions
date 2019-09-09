cd /home/deckysystem/frank
chmod -R 777 /home/deckysystem/frank/changepassword1.sh


USER=$1
PASS=$2
usermod --password $(echo $PASS | openssl passwd -1 -stdin) $USER
