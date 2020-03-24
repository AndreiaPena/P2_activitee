# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_sqlite3
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=node_sqlite3' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DSQLITE_THREADSAFE=1' \
	'-DHAVE_USLEEP=1' \
	'-DSQLITE_ENABLE_FTS3' \
	'-DSQLITE_ENABLE_FTS4' \
	'-DSQLITE_ENABLE_FTS5' \
	'-DSQLITE_ENABLE_JSON1' \
	'-DSQLITE_ENABLE_RTREE' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/include/node \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/src \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/openssl/config \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/openssl/openssl/include \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/uv/include \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/zlib \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/v8/include \
	-I$(srcdir)/../nan \
	-I$(obj)/gen/sqlite-autoconf-3300100

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=node_sqlite3' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DSQLITE_THREADSAFE=1' \
	'-DHAVE_USLEEP=1' \
	'-DSQLITE_ENABLE_FTS3' \
	'-DSQLITE_ENABLE_FTS4' \
	'-DSQLITE_ENABLE_FTS5' \
	'-DSQLITE_ENABLE_JSON1' \
	'-DSQLITE_ENABLE_RTREE' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DNDEBUG'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/include/node \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/src \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/openssl/config \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/openssl/openssl/include \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/uv/include \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/zlib \
	-I/home/simplon/.node-gyp/13.0.0-nightly20190802452b393c1f/deps/v8/include \
	-I$(srcdir)/../nan \
	-I$(obj)/gen/sqlite-autoconf-3300100

OBJS := \
	$(obj).target/$(TARGET)/src/backup.o \
	$(obj).target/$(TARGET)/src/database.o \
	$(obj).target/$(TARGET)/src/node_sqlite3.o \
	$(obj).target/$(TARGET)/src/statement.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/sqlite3.a $(obj).target/deps/action_before_build.stamp $(obj).target/deps/sqlite3.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/node_sqlite3.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/node_sqlite3.node: LIBS := $(LIBS)
$(obj).target/node_sqlite3.node: TOOLSET := $(TOOLSET)
$(obj).target/node_sqlite3.node: $(OBJS) $(obj).target/deps/sqlite3.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/node_sqlite3.node
# Add target alias
.PHONY: node_sqlite3
node_sqlite3: $(builddir)/node_sqlite3.node

# Copy this to the executable output path.
$(builddir)/node_sqlite3.node: TOOLSET := $(TOOLSET)
$(builddir)/node_sqlite3.node: $(obj).target/node_sqlite3.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/node_sqlite3.node
# Short alias for building this executable.
.PHONY: node_sqlite3.node
node_sqlite3.node: $(obj).target/node_sqlite3.node $(builddir)/node_sqlite3.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/node_sqlite3.node
