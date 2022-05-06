deploy:
	sh deploy.sh

posts.new:
	hugo new posts/`date '+%Y'`/`date '+%m%d'`_`date '+%H%M%S'`.md
