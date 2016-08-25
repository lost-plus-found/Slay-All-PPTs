BINDIR=/usr/local/bin
UNAME_S:=$(shell uname -s)

.PHONY: install uninstall

install:
	mkdir ~/.sap
	install -m755 -d $(BINDIR)
	@if [ "$(UNAME_S)" = "Linux" ]; then\
		install -m755 -t $(BINDIR) sap; \
	fi
	@if [ "$(UNAME_S)" = "Darwin" ]; then\
		install -m755  sap $(BINDIR); \
	fi

uninstall:
	rm -f $(BINDIR)/sap
