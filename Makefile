# Sync /etc/skel with whatever is in src/ after fixing file modes
install: set-file-modes
	rsync -av src/ /etc/skel/

# Since git doesn't care about file modes we have to set them manually
# here
set-file-modes: ssh-file-modes

ssh-file-modes:
	chmod 700 src/.ssh src/.gnupg
	chmod 600 src/.ssh/authorized_keys src/.gnupg/*
