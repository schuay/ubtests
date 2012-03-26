HOST = ub-handin

RSYNC = rsync
SSH = ssh

SFLAGS = -F ".ssh-cfg"
RFLAGS = --chmod=o-rwxs,Dug+x,u+rw,g+r -e "$(SSH) $(SFLAGS)" \
		 -r --delete --progress

all: 
	$(RSYNC) $(RFLAGS) test/ $(HOST):test/

