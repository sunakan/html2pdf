include makefiles/gitignore.mk
include makefiles/help.mk

################################################################################
# 変数
################################################################################

################################################################################
# マクロ
################################################################################

################################################################################
# タスク
################################################################################
.PHONY: docker-build
docker-build:
	docker-compose build

.PHONY: docker-bash
docker-bash:
	docker-compose run --rm app bash

.PHONY: html2pdf-1
html2pdf-1:
	docker-compose run --rm app bash -c '/usr/bin/chromium --headless --disable-gpu --no-sandbox --print-to-pdf=output.pdf /var/local/app/sample-0/index.html && chmod 777 output.pdf'
