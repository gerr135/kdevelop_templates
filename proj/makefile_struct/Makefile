DEBUG=y

CC=gcc
LDLIBS=

ifeq ($(DEBUG), y)
 CFLAGS=-g -Wall
else
 CFLAGS=-O3
endif


TGT = %{APPNAMELC}

OBJDIR=obj/
SRCDIR=src/
INCDIR=include/

vpath %.c $(SRCDIR)
vpath %.h $(INCDIR)

sources = $(addprefix $(SRCDIR)/, %{APPNAMELC}.c)
objects = $(addprefix $(OBJDIR)/, %{APPNAMELC}.o)

$(TGT):$(objects)
	$(CC) $(CFLAGS) $(LDLIBS) -o $(TGT) $(sources)

$(OBJDIR)/%.o: %.c %.h
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm $(TGT) $(objects)

.PHONY : clean

