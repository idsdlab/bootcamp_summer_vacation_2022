#------------------------------------------------------------------
# Copyright (c) 2013 by Ando Ki.
# All right reserved.
#
# This code is distributed in the hope that it will
# be useful to understand Ando Ki's work,
# but WITHOUT ANY WARRANTY.
#------------------------------------------------------------------
SHELL		= /bin/sh
MAKEFILE	= Makefile
#------------------------------------------------------------------
ARCH	= $(shell uname)
ifeq ($(ARCH), CYGWIN_NT-5.1)
else
ifeq ($(ARCH), MINGW32_NT-5.1)
else
endif
endif

#--------------------------------------------------------
VLIB	= $(shell which vlib)
VLOG	= $(shell which vlog)
VSIM	= $(shell which vsim)
WORK	= work
TARGET = 00_counter

#--------------------------------------------------------
TOP	= top
#--------------------------------------------------------
all: build vlib compile simulate post

build:


vlib:
	if [ -d $(WORK) ]; then /bin/rm -rf $(WORK); fi
	($(VLIB) $(WORK) || exit -1) 2>&1 | tee compile.log

compile:
	($(VLOG) -lint -work $(WORK)\
		-f modelsim.args || exit -1) 2>&1 | tee compile.log

# /tools/synopsys/verdi/R-2020.12-SP2/share/PLI/MODELSIM/linux64 
#
simulate: compile
	$(VSIM) \
	-c -do "add wave *; run -all; quit" \
	$(WORK).$(TOP)

post:
	vcd2fsdb wave.vcd -o wave.fsdb

verdi:
	Verdi -f run.f &

#--------------------------------------------------------
clean:
	-@/bin/rm -rf $(WORK)
	-@/bin/rm -f  transcript
	-@/bin/rm -f  wave.vcd dump.vcd
	-@/bin/rm -f  vsim.wlf
	-@/bin/rm -f  vish_stacktrace.vstf
	-@/bin/rm -f  wlft*
	-@/bin/rm -f  compile.log
	-@/bin/rm -rf  wave.fsdb Verdi-SXLog VerdiLog vcd2fsdbLog
	-@/bin/rm -rf  novas.conf novas.conf novas_dump.log

	

cleanup: clean

clobber: cleanup
#--------------------------------------------------------
