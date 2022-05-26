# deployはgh actionで行うのでMakefile中には記載しない。
# # deploy:
# # 	sh deploy.sh

.PHONY: posts.new
posts.new:
	hugo new posts/`date '+%Y'`/`date '+%m%d'`_`date '+%H%M%S'`.md
