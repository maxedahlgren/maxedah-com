SRC_DIR := src
OUT_DIR := output
NGINX_LOGS_DIR := logs

MD_FILES := $(shell find $(SRC_DIR) -name '*.md')
HTML_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.html)
PUSH_FILES := $(MD_FILES:$(SRC_DIR)/%.md=$(OUT_DIR)/%.push)

.PHONY: all push docker clean

all: $(HTML_FILES)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md $(SRC_DIR)/styles.css pandoc-template.html
	@mkdir -p $(@D)
	pandoc --from markdown --to html --template pandoc-template.html -o $@ $<

# no state so fine to kill and run fresh always (--rm option on)
docker: nginx.conf
	-docker kill maxeda
	docker run --rm --detach --publish 8000:80 --name maxeda \
		--volume $(NGINX_LOGS_DIR):/var/log/nginx \
		--volume $(OUT_DIR):/usr/share/nginx/html:ro \
		--volume ./nginx.conf:/etc/nginx/nginx.conf:ro \
		nginx:alpine

clean:
	rm -rf $(OUT_DIR)
