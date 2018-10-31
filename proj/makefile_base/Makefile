CC=gcc
CFLAGS="-Wall"

debug:clean
	$(CC) $(CFLAGS) -g -o %{APPNAMELC} main.c
stable:clean
	$(CC) $(CFLAGS) -o %{APPNAMELC} main.c
clean:
	rm -vfr *~ %{APPNAMELC}