SRC_DIR := src
OUT_DIR := build

MD_FILES := $(shell find $(SRC_DIR) -name '*.md')
HTML_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.html)
PUSH_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.push)

.PHONY: all push docker clean

all: $(HTML_FILES)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md $(SRC_DIR)/styles.css pandoc-template.html
	@mkdir -p $(@D)
	pandoc --from markdown --to html --template pandoc-template.html -o $@ $<

clean:
	rm -rf $(OUT_DIR) $(LOGS_DIR)
