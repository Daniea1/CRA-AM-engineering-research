REPORT_DIR := report
BUILD_DIR := build
REPORT_BUILD_DIR := ../$(BUILD_DIR)
MAIN := main.tex

.PHONY: all report watch clean

all: report

report:
	mkdir -p $(BUILD_DIR)
	cd $(REPORT_DIR) && tectonic --outdir $(REPORT_BUILD_DIR) $(MAIN)

watch: report

clean:
	rm -rf build
