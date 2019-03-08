
#####################################################################################################
COURSE=cs130w
ASGN=06
NAME=prolog
PROLOG_EXE=/home/linux/ieng6/cs130w/public/lib/swipl-7.4.2/bin/x86_64-linux/swipl
SHARED_LIB=LD_LIBRARY_PATH=$(LD_LIBRARY_PATH)$::/home/linux/ieng6/cs130w/public/lib/swipl-7.4.2/lib/x86_64-linux/
#####################################################################################################



test:
	export LD_LIBRARY_PATH
	(cd src; $(SHARED_LIB)$   $(PROLOG_EXE) -s test.pl)

turnin:
	rm -rf ./$(ASGN)-$(NAME).tgz
	tar -zcvf ../$(ASGN)-$(NAME).tgz --exclude .git ../$(ASGN)-$(NAME)
	mv ../$(ASGN)-$(NAME).tgz .
	turnin -c $(COURSE) -p $(ASGN) ./$(ASGN)-$(NAME).tgz
