WASI_SDK=/opt/wasi-sdk

CC=$(WASI_SDK)/bin/clang
CXX=$(WASI_SDK)/bin/clang++
LD=$(WASI_SDK)/bin/wasm-ld

# Optional flags which can optimize the WebAssembly binaries in space (size) and time (speed).
CFLAGS_OPTIMIZATION = \
	-O3 \
	-flto \
	-fno-exceptions 

CFLAGS= \
	$(CFLAGS_OPTIMIZATION)

CXXFLAGS = \
	$(CFLAGS_OPTIMIZATION)

LDFLAGS_OPTIMIZATION = \
	--lto-O3

LDFLAGS= \
  --no-entry \
  --export-dynamic \
  --allow-undefined \
	$(LDFLAGS_OPTIMIZATION)
