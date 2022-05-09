# Makefile

default: all

CC = gcc
CFLAGS = -Wall -Wextra -Wno-sign-compare -std=c11 -O2

ARMIPS = tools/armips
FIXNARC = tools/fixnarc

PYTHON = python3
NARCHIVE = $(PYTHON) tools/narcpy.py

BUILD = build
BE_SEQ_SUBDIR = battle_scripts/be_seq_rev
BE_SEQ_REV = be_seq_rev
BE_SEQ_SRCS := $(wildcard $(BE_SEQ_SUBDIR)/*.s)
BE_SEQ_OBJS := $(patsubst $(BE_SEQ_SUBDIR)/%.s,$(BUILD)/$(BE_SEQ_REV)/be_seq_rev_%,$(BE_SEQ_SRCS))
SUB_SEQ_SUBDIR = battle_scripts/sub_seq_rev
SUB_SEQ_REV = sub_seq_rev
SUB_SEQ_SRCS := $(wildcard $(SUB_SEQ_SUBDIR)/*.s)
SUB_SEQ_OBJS := $(patsubst $(SUB_SEQ_SUBDIR)/%.s,$(BUILD)/$(SUB_SEQ_REV)/be_seq_rev_%,$(SUB_SEQ_SRCS))
WAZA_SEQ_SUBDIR = battle_scripts/waza_seq_rev
WAZA_SEQ_REV = waza_seq_rev
WAZA_SEQ_SRCS := $(wildcard $(WAZA_SEQ_SUBDIR)/*.s)
WAZA_SEQ_OBJS := $(patsubst $(WAZA_SEQ_SUBDIR)/%.s,$(BUILD)/$(WAZA_SEQ_REV)/be_seq_rev_%,$(WAZA_SEQ_SRCS))

scripts: $(BE_SEQ_SUBDIR)/* $(SUB_SEQ_SUBDIR)/* $(WAZA_SEQ_SUBDIR)/*
	mkdir -p build build/sub_seq_rev build/waza_seq_rev build/be_seq_rev
	for file in $^ ; do $(ARMIPS) $${file} ; done
    
all: scripts
	mkdir -p output
	$(NARCHIVE) create build/sub_seq_rev_LE.narc build/sub_seq_rev -nf
	$(FIXNARC) build/sub_seq_rev_LE.narc output/sub_seq_rev.narc
	$(NARCHIVE) create build/waza_seq_rev_LE.narc build/waza_seq_rev -nf
	$(FIXNARC) build/waza_seq_rev_LE.narc output/waza_seq_rev.narc
	$(NARCHIVE) create build/be_seq_rev_LE.narc build/be_seq_rev -nf
	$(FIXNARC) build/be_seq_rev_LE.narc output/be_seq_rev.narc

build_tools:
	#rm -r -f tools/source/armips
	#cd tools/source ; git clone --recursive https://github.com/Kingcom/armips.git
	#cd tools/source/armips ; mkdir build
	#cd tools/source/armips/build ; cmake -DCMAKE_BUILD_TYPE=Release ..
	#cd tools/source/armips/build ; cmake --build .
	#mv tools/source/armips/build/armips tools/armips
	#rm -r -f tools/source/armips

	$(CC) $(CFLAGS) tools/source/swapnarcheader.c -o tools/fixnarc 

clean:
	rm tools/armips
	rm tools/fixnarc
	rm -r -f build/*
	rmdir build

tidy:
	rm -r -f build/*
	rmdir build
