# Manually generated by modifying  the output of buildroot/support/scripts/mkmakefile

lastword = $(word $(words $(1)),$(1))
makedir := $(dir $(call lastword,$(MAKEFILE_LIST)))

MAKEARGS := -C $(CURDIR)/buildroot
MAKEARGS += O=$(CURDIR)/output
MAKEARGS += BR2_EXTERNAL=$(CURDIR)
MAKEARGS += BR2_DEFCONFIG=$(CURDIR)/configs/wifisd_defconfig

MAKEFLAGS += --no-print-directory

.PHONY: all $(MAKECMDGOALS)

all	:= $(filter-out Makefile,$(MAKECMDGOALS))

_all:
	$(MAKE) $(MAKEARGS) $(all)

Makefile:;

$(all): _all
	@:

%/: _all
	@: