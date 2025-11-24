BUILD_DIR ?= build
SAC2C_EXEC ?= sac2c
TARGETS ?= "seq;seq_checks;mt_pth"

.PHONY: all build clean

all: build

build:
	cmake -DTARGETS=$(TARGETS) -DSAC2C_EXEC=$(SAC2C_EXEC) -B $(BUILD_DIR)
	cmake --build $(BUILD_DIR)

clean:
	$(RM) -r $(BUILD_DIR)
