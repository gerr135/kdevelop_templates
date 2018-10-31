TARGET = run_%{APPNAME}
SOURCES = src/*.ad?

# rule to link the program
%{APPNAME}: $(SOURCES)
	gprbuild -P %{PROJECTDIRNAME}.gpr
