SRC_DIR := src
OUT_DIR := output

MD_FILES := $(shell find $(SRC_DIR) -name '*.md')
HTML_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.html)
PUSH_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.push)

.PHONY: all clean push

all: $(HTML_FILES)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md src/styles.css
	@mkdir -p $(@D)
	pandoc -d defaults.yaml -o $@ $<

push: $(PUSH_FILES) $(OUT_DIR)/feed.push

$(OUT_DIR)/%.push: $(OUT_DIR)/%.html
	scp $< maxeda@maxedah.com:/public_html/$(<:output/%=%)
	@touch $@

$(OUT_DIR)/feed.push: feed.xml
	scp $< maxeda@maxedah.com:/public_html
	@touch $@

clean:
	rm -rf $(OUT_DIR)
