SUBDIRS = linuxdoom-1.10 sndserv

.PHONY: all clean

all:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir all || exit $$?; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean || exit $$?; \
	done
