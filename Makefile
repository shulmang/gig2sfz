BIN := gig2sfz
SRCS := main.cpp

-include Makefile.local

# =======

default: $(BIN)

$(BIN): $(SRCS)
	$(CXX) $^ -o $@ $(CFLAGS) -L/usr/local/lib/libgig -lgig

install: $(BIN)
	cp gig2sfz /usr/local/bin
	cp convert-gig-file /usr/local/bin

clean:
	rm -f gig2sfz

.PHONY: test
test: $(BIN)
	$(BIN) wurlitzer_ep200.gig
	vim "Wurlitzer EP200.sfz"
