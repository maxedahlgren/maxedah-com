SRC_DIR := src
OUT_DIR := output

MD_FILES := $(shell find $(SRC_DIR) -name '*.md')
HTML_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.html)

.PHONY: all clean

all: $(HTML_FILES)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md
	@mkdir -p $(@D)
	pandoc -d defaults.yaml -o $@ $<

push: $(HTML_FILES)
	echo scp -r $(HTML_FILES) feed.xml maxeda@maxedah.com:/public_html

clean:
	rm -rf $(OUT_DIR)
