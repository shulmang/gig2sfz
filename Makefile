BIN := gig2sfz
SRCS := main.cpp

-include Makefile.local

# =======

default: $(BIN)

$(BIN): $(SRCS)
	$(CXX) $^ -o $@ $(CFLAGS) -L/usr/local/lib/libgig -lgig

.PHONY: test
test: $(BIN)
	$(BIN) wurlitzer_ep200.gig
	vim "Wurlitzer EP200.sfz"
