.SUFFIXES:            # Delete the default suffixes
.SUFFIXES: .java .class   # Define our suffix listCC=gcc

#TGT = %{APPNAME}.class

JC=javac
CLSDIR=cls
SRCDIR=src

sources = $(addprefix $(SRCDIR)/, %{APPNAME}.java)
classes = $(addprefix $(CLSDIR)/, %{APPNAME}.class)

build:
	$(JC) -cp $(SRCDIR) -d $(CLSDIR) $(sources)
clean:
	rm $(classes)

.PHONY : clean
