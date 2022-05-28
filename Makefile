# deployはgh actionで行うのでMakefile中には記載しない。
# # deploy:
# # 	sh deploy.sh

.PHONY: posts.new
TITLE=foo
posts.new:
	hugo new posts/`date '+%Y'`/`date '+%m%d'`_`date '+%H%M%S'`_$(TITLE).md
