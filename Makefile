REPORT_DIR := report
BUILD_DIR := build
REPORT_BUILD_DIR := ../$(BUILD_DIR)
MAIN := main.tex
PDF_NAME := CRA-Additive-Manufacturing-Threat-Taxonomy.pdf

.PHONY: all report watch clean

all: report

report:
	mkdir -p $(BUILD_DIR)
	cd $(REPORT_DIR) && tectonic --outdir $(REPORT_BUILD_DIR) $(MAIN)
	mv "$(BUILD_DIR)/main.pdf" "$(BUILD_DIR)/$(PDF_NAME)"

watch: report

clean:
	rm -rf build
